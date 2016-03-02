class OrderDetail < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }, presence: true
  validate :product_in_stock

  def get_product_info
    Product.find(self.product_id)
  end

  def subtotal
    product = Product.find(self.product_id)
    self.quantity * product.price
  end

  private

  def product_in_stock
    @product = Product.find(self.product_id)
    if self.quantity && self.quantity > @product.quantity
      errors.add(:product, "does not have enough in stock")
    end
  end
end
