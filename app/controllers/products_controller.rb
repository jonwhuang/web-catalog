class ProductsController < ApplicationController
  def index
    @products = Product.paginate(:page => params[:page])
  end

  def show
    @product = Product.find(params[:id])
  end

  def home
    @products = Product.order("RANDOM()").limit(4)
  end
end
