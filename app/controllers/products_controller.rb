class ProductsController < ApplicationController
  def index
    @products = Product.paginate(:page => params[:page])
  end

  def show
    @product = Product.find(params[:id])
    @order_detail = OrderDetail.find_by(product_id: @product.id, order_id: current_user.get_cart.id) if current_user && current_user.current_cart?
  end

  def home
    @products = Product.order("RANDOM()").limit(9)
  end
end
