class Admin::ProductsController < ApplicationController

  before_action :authenticate_user!
  before_filter :verify_admin

  def index
    @products = Product.paginate(:page => params[:page]).order(:id)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.order(:name)
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.order(:name)
  end

  def create
    @product = Product.new(product_params)
    @categories = Category.order(:name)
    @product.set_categories(params[:category])

    if @product.save
      flash[:success] = "Product successfully created"
      redirect_to admin_products_path
    else
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    @categories = Category.order(:name)
    @product.categories = []
    @product.set_categories(params[:category])

    if @product.update(product_params)
      flash[:success] = "Product successfully updated"
      redirect_to admin_products_path
    else
      render "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:info] = "Product successfully deleted"
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :picture_link, :quantity)
  end

  def verify_admin
    (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
end
