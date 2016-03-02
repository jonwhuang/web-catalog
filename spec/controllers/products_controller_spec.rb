require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:category) { Category.create(name: "test") }
  describe 'GET #index' do
    before do
      @all_products = 3.times.map do
        Product.create(title: "test", description: "test", price: 10)
      end
    end

    it 'should load all products' do
      get :index
      expect(assigns[:products]).to eq @all_products
      expect(response.status).to eq 200
      expect(response).to have_rendered(:index)
    end
  end

  # describe 'POST #create' do
  #   context 'when given valid params' do
  #     let :product_params do
  #       {title: "test", description: "test", price: 10, category_id: category.id}
  #     end
  #     it 'should create the product and redirect to the products index page' do
  #       expect {
  #         post :create, product: product_params
  #         }.to change{ Product.count }.by(1)
  #       expect(assigns[:product]).to be_a Product
  #       expect(response.status).to eq(302)
  #     end
  #   end
  #   context 'when given invalid params' do
  #     let :product_params do
  #       {description: "test", price: 10, category_id: category.id}
  #     end
  #     it 'should not create the product and re-render the new page' do
  #       expect {
  #         post :create, product: product_params
  #         }.to_not change{ Product.count }
  #         expect(assigns[:product]).to be_a Product
  #         expect(response).to have_rendered(:new)
  #     end
  #   end
  # end

  describe 'GET #show' do
    let(:product) { Product.create(title: "test", description: "test", price: 10) }
    it 'assigns the product instance variable' do
      expect(product).to be_a Product
    end
  end

  # describe 'PUT #update' do
  #   let!(:title) { "test2" }
  #   let(:product) { Product.create(title: "test", description: "test", price: 10, category_id: category.id) }
  #   it 'updates a field on a product' do
  #     put :update, id: product.id, product: { title: title }
  #     expect(product.reload.title).to eq(title)
  #   end
  # end

  # describe 'DELETE #destroy' do
  #   let(:product) { Product.create(title: "test", description: "test", price: 10, category_id: category.id) }
  #   it 'decrements products by one' do
  #     product_id = product.id
  #     expect {
  #       delete :destroy, id: product_id
  #     }.to change{ Product.count }.by(-1)
  #   end
  #   it 'redirects to the root path' do
  #     product_id = product.id
  #     delete :destroy, id: product_id
  #     expect(response.status).to eq(302)
  #   end
  # end
end
