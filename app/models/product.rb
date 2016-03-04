class Product < ActiveRecord::Base
  self.per_page = 12
  has_and_belongs_to_many :categories

  validates :title, :description, :price, presence: true
  validate :has_at_least_one_category

  def has_category?(category)
    self.categories.include? category
  end

  def set_categories(category_hash)
    if category_hash
      category_hash.each_key do |key|
        self.categories << Category.find(key)
      end
    end
  end

  private
  def has_at_least_one_category
    if self.categories.length < 1
      errors.add(:product, "needs to belong to at least one category")
    end
  end
end
