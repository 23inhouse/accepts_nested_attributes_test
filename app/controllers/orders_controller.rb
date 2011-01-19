class OrdersController < ApplicationController
  def new
  end
  
  def create
    @order = Order.create!(params[:order])
    redirect_to new_order_path
  end
end
