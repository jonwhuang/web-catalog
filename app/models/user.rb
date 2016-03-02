class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def current_cart?
    if !self.orders.empty?
      !self.orders.last.purchased
    end
  end

  def get_cart
    self.orders.last if self.current_cart?
  end

  def get_cart_orders
    self.current_cart? ? self.orders.last.order_details : []
  end

  def has_no_cart?
    !self.orders.last.nil? && !self.orders.last.purchased
  end
end
