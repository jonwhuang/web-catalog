Category.delete_all
Product.delete_all

User.create(email: "admin@admin.com", password: "secret", admin: true)

Category.create(name: "Men's")
Category.create(name: "Women's")
Category.create(name: "Kids'")
Category.create(name: "Casual Shoes")
Category.create(name: "Dress Shoes")
Category.create(name: "Boots")
Category.create(name: "Sandals")
Category.create(name: "Sneakers")
Category.create(name: "Slippers")
Category.create(name: "Heels")
Category.create(name: "Flats")


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
