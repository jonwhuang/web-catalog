class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def home
    @products = Product.order("RANDOM()").limit(2)
  end
end
