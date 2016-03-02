class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @orders = current_user.orders.where(purchased: true).order('id DESC').paginate(:page => params[:page])
  end

  def show
    @order = Order.find(params[:id])
    @cart = @order.order_details
    @next_order = @order.get_next_order
    @previous_order = @order.get_previous_order
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.order_details.each do |order_detail|
      product = order_detail.get_product_info
      product.update(quantity: product.quantity - order_detail.quantity)
    end
    render 'thank_you'
  end

  def cart
    render "cart"
  end

  private

  def order_params
    params.require(:order).permit(:purchased)
  end
end
