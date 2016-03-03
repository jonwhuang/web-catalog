# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Product.delete_all

User.create(email: "admin@admin.com", password: "secret", admin: true)

Category.create(name: "Office")
Category.create(name: "Books")
Category.create(name: "Entertainment")
Category.create(name: "Music")
Category.create(name: "Furniture")
Category.create(name: "Home")
Category.create(name: "Gifts")
Category.create(name: "Clothing")
Category.create(name: "Outdoors")
Category.create(name: "Baby")

20.times do
  new_product = Product.new(title: Faker::Commerce.product_name, description: Faker::Hacker.say_something_smart, price: Faker::Commerce.price, picture_link: Faker::Avatar.image(Faker::Name.first_name, "150x150"))
  new_product.categories << Category.find(rand(1..5)) << Category.find(rand(6..10))
  new_product.save
end

5.times do
  new_product = Product.new(title: Faker::Commerce.product_name, description: Faker::Hacker.say_something_smart, price: Faker::Commerce.price, picture_link: Faker::Avatar.image(Faker::Name.first_name, "150x150"))
  new_product.categories << Category.find(rand(1..3)) << Category.find(rand(4..6)) << Category.find(rand(7..10))
  new_product.save
end

5.times do
  new_product = Product.new(title: Faker::Commerce.product_name, description: Faker::Hacker.say_something_smart, price: Faker::Commerce.price, picture_link: Faker::Avatar.image(Faker::Name.first_name, "150x150"))
  new_product.categories << Category.find(rand(1..10))
  new_product.save
end
