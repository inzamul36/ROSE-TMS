class DashboardsController < ApplicationController
  def index
  	month = Date.today
  	@orders = Order.where(:order_delete=>'0')
  	@order_due = (@orders.sum(:order_amount) - @orders.sum(:order_paid))

    @orders_processing = Order.where(:order_delete=>'0', :order_status=>'Processing')
    @order_processing = @orders_processing.count

  	@orders_ready = Order.where(:order_delete=>'0', :order_status=>'Ready')
  	@order_ready = @orders_ready.count
  	
  	@orders_confirm = Order.where(:order_delete=>'0', :order_status=>'Confirm')
  	@order_confirm = @orders_confirm.count

    @orders_delivered = Order.where(:order_delete=>'0', :order_status=>'Delivered')
    @order_delivered = @orders_delivered.count

  	@staffs = Staff.where(:staff_delete=>'0').count


  	@order_month = Order.where(:order_delete=>'0', :created_at=>month.all_month).count
    @order_month_ready = Order.where(:order_delete=>'0', :order_status=>'Ready', :created_at=>month.all_month).count
  	@order_month_delivery = Order.where(:order_delete=>'0', :order_status=>'Delivered', :created_at=>month.all_month).count
  	@order_month_total = Order.where(:order_delete=>'0', :created_at=>month.all_month).sum(:order_amount)
  	@order_month_paid = Order.where(:order_delete=>'0', :created_at=>month.all_month).sum(:order_paid)
  	@order_month_due = (@order_month_total - @order_month_paid)

    @customers = Customer.all.count

  end
end
