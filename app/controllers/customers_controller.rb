class CustomersController < ApplicationController

  before_action :authenticate_user!

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @customer_order = Order.where(:customer_id=> params[:id], :order_delete=>'0')

    @customer_order_amount = Order.where(:customer_id=> params[:id], :order_delete=>'0').sum(:order_amount)
    @customer_order_paid = Order.where(:customer_id=> params[:id], :order_delete=>'0').sum(:order_paid)
    @customer_order_total = @customer_order.count
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params.require(:customer).permit(:customer_name, :customer_phone, :customer_email, :customer_sex, :customer_address ))

    if @customer.save
      redirect_to customers_path, :notice=> 'Customer was successfully created.'
    else
      redirect_to new_customers_path, :alert=> 'Customer was not created.'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(params.require(:customer).permit(:customer_name, :customer_phone, :customer_email, :customer_sex, :customer_address ))
      redirect_to customers_path, :notice=> 'Customer was successfully updated.'
    else
      redirect_to edit_customers_path, :alert=> 'Customer was not updated.'
    end
  end

  def destroy
  end
end
