class Order < ActiveRecord::Base
  self.per_page = 10
  has_many :order_details
  has_many :products, through: :order_details, source: :product
  belongs_to :user

  def total_price
    self.order_details.reduce(0) { |sum, order_detail| sum + order_detail.subtotal }
  end

  def get_previous_order
    orders = self.user.orders
    current_order_index = orders.index(self)
    orders[current_order_index - 1] if current_order_index > 0
  end

  def get_next_order
    orders = self.user.orders
    current_order_index = orders.index(self)
    orders[current_order_index + 1]
  end
end
