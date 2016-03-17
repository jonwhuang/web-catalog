class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    if request.xhr?
      render "_modal", layout: false
    end
  end

  def home
    @products = Product.order("RANDOM()").limit(2)
  end
end
