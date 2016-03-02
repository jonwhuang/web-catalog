class Category < ActiveRecord::Base
  self.per_page = 5
  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :name, uniqueness: true
end
