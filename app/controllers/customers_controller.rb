class CustomersController < ApplicationController
  def index # show list of customers
    @customers = Customer.all
  end
  
  def show_orders
    @customer_id = params[:customer][:id]
    @orders = Order.where("customer_id = ?", @customer_id)
  end
  
  def show_products
    @products = Product.all
  end
  
  def show_lineitems
    @order_id = params[:order][:id]
    @lineitems = LineItem.where("order_id = ?", @order_id)
  end
end
