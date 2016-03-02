class OrderDetailsController < ApplicationController

  before_action :authenticate_user!

  def new
    @order_detail = OrderDetail.new
    @product = Product.find(params[:product_id])
    Order.create(user_id: current_user.id) if !current_user.current_cart?
    if request.xhr?
      render '_new', layout: false
    end
  end

  def edit
    @order_detail = OrderDetail.find(params[:id])
    @product = @order_detail.product
    if request.xhr?
      render '_edit', layout: false
    end
  end

  def create
    Order.create(user_id: current_user.id) if !current_user.current_cart?
    @product = Product.find(params[:product_id])
    @order_detail = OrderDetail.new(order_detail_params)
    @order_detail.order_id = current_user.get_cart.id
    @order_detail.product_id = @product.id
    if @order_detail.save
      flash[:success] = "Product Added to Cart!"
      if request.xhr?
        render '_edit_with_cart', layout: false
      else
        redirect_to product_path(@product)
      end
    else
      if request.xhr?
        render 'layouts/_order_errors', layout: false, status: :unprocessable_entity
      else
        render "new"
      end
    end
  end

  def update
    @order_detail = OrderDetail.find(params[:id])
    @product = Product.find(@order_detail.product_id)

    if @order_detail.update(order_detail_params)
      flash[:success] = "Cart successfully updated"
      if request.xhr?
        render '_edit_with_cart', layout: false
      else
        redirect_to product_path(@product)
      end
    else
      if request.xhr?
        render 'layouts/_order_errors', layout: false, status: :unprocessable_entity
      else
        render "edit"
      end
    end
  end

  def destroy
    OrderDetail.find(params[:id]).destroy
    flash[:info] = "Removed from Cart"
    if request.xhr?
      render 'orders/_cart', layout: false
    else
      redirect_to cart_path
    end
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:quantity)
  end

end













