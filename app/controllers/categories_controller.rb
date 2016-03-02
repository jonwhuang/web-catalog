class CategoriesController < ApplicationController

  def index
    @categories = Category.paginate(:page => params[:page]).order(:name)
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.paginate(:page => params[:page])
  end
end
