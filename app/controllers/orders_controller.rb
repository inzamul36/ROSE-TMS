class OrdersController < ApplicationController

  before_action :authenticate_user!	

  def index
    @orders = Order.where(:order_delete=>'0')
  end

  def show
    @order  = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @customer = Customer.all
    @staff = Staff.where(:staff_delete=>'0')
  end

  def create
    @order = Order.new(params.require(:order).permit(:customer_id, :staff_id, :delivery_date, :order_amount, :order_paid, :order_status, :order_details))

    if @order.save
      Measurement.create(:order_id=>Order.last.id)
      redirect_to edit_measurement_path(Order.last.id), :notice=> 'Order was successfully created.'
    else
      redirect_to new_order_path, :alert=> 'Order was not created.'
    end
  end

  def edit
  	@order = Order.find(params[:id])
  	@customer = Customer.all
    @staff = Staff.where(:staff_delete=>'0')
  end

  def update
    @order = Order.find(params[:id])

  	if @order.update(params.require(:order).permit(:customer_id, :staff_id, :delivery_date, :order_amount, :order_paid, :order_status, :order_details))
      redirect_to orders_path , :notice=> 'Order was successfully updated.'
    else
      redirect_to edit_orders_path, :alert=> 'Order was not updated.'
    end
  end

  def destroy
  	if @order = Order.where(:id=>params[:id]).update_all(:order_delete=>'1')
      redirect_to orders_path
    end
  end
end
