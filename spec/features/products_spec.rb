require 'rails_helper'

RSpec.feature "Products", type: :feature, js: true do
  before do
    category = Category.create(name: "test")
    product = Product.create(title: "test", description: "test", price: 10)
    admin = User.create(email: "admin@admin.com", password: "secret", admin: true)
  end

  it 'can see the page title' do
    visit root_path
    expect(page).to have_content("The Store")
  end

  context "Add Button" do
    it "creates a new product" do
      visit new_admin_product_path
      fill_in 'Email', with: "admin@admin.com"
      fill_in 'Password', with: "secret"
      click_button('Log in')
      visit new_admin_product_path
      fill_in 'Title', with: "test"
      fill_in 'Description', with: "test2"
      fill_in 'Price', with: 10
      click_button('Save Changes')
      expect(page).to have_content("test2")
    end
  end

  describe "product page" do
    before(:each) do
      visit admin_product_path(Product.first.id)
    end
    it 'displays a form and updates an existing product' do
      fill_in 'Email', with: "admin@admin.com"
      fill_in 'Password', with: "secret"
      click_button('Log in')
      visit admin_product_path(Product.first.id)
      click_on('Edit')
      new_title = "TEST"
      fill_in 'Title', with: new_title
      click_button('Save Changes')
      expect(page).to have_content(new_title)
    end
    it 'has a button that deletes the product' do
      fill_in 'Email', with: "admin@admin.com"
      fill_in 'Password', with: "secret"
      click_button('Log in')
      visit admin_product_path(Product.first.id)
      click_on('Delete')
      page.driver.browser.switch_to.alert.accept
      expect(page).to_not have_content("test")
    end
  end
end
