require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) { Category.create(name: "test") }
  let(:product_no_title) { Product.new(description: "test", price: 10) }
  let(:product_no_desc) { Product.new(title: "test", price: 10) }
  let(:product_no_price) { Product.new(title: "test", description: "test") }
  let(:product) { Product.new(title: "test", description: "test", price: 10 ) }

  describe 'validations' do
    context 'will raise an error ' do
      it 'when the title field is empty' do
        product_no_title.save
        expect(product_no_title.errors[:title]).to include("can't be blank")
      end
      it 'when the description field is empty' do
        product_no_desc.save
        expect(product_no_desc.errors[:description]).to include("can't be blank")
      end
      it 'when the price field is empty' do
        product_no_price.save
        expect(product_no_price.errors[:price]).to include("can't be blank")
      end
    end
    it 'saves the product when the fields are not blank' do
      expect{product.save}.to change{Product.count}.by(1)
    end
  end
end
