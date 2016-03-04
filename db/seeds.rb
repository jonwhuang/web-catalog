Category.delete_all
Product.delete_all

User.create(email: "admin@admin.com", password: "secret", admin: true)

Category.create(name: "Men's") #1
Category.create(name: "Women's") #2
Category.create(name: "Kids'") #3
Category.create(name: "Casual Shoes") #4
Category.create(name: "Dress Shoes") #5
Category.create(name: "Boots") #6
Category.create(name: "Sandals") #7
Category.create(name: "Sneakers") #8
Category.create(name: "Slippers") #9
Category.create(name: "Heels") #10
Category.create(name: "Flats") #11


shoe_descriptions = ["This mid-heeled hook-and-eye calf-length boot is made from vivid purple velvet.  It has a sporty appearance.", "This low-heeled lace-up shoe is made from yellow silk.  It has a sleek appearance.", "This low-heeled buckled shoe is made from retro design print fabric designed in light magenta, vivid pink, vivid blue, and white.  It has a sleek appearance.", "This mid-heeled buckled calf-length boot is made from plaid fabric designed in vivid orange, yellow, blue, and white.  It has a streamlined appearance.", "This low-heeled lace-up sandal is made from white velvet.  It has a frilly appearance.", "This mid-heeled buckled sandal is made from gray denim.  It has a blocky appearance.", "This low-heeled hook-and-eye shoe is made from vivid turquoise straw.  It has a sporty appearance.  It is accented with silver chains.", "This low-heeled buckled shoe is made from vivid red and black zebra-stripe print fabric.  It has a blocky appearance.  It is accented with beads and a fabric flower.", "This high-heeled buckled shoe is made from magenta and vivid turquoise cheetah-spot print fabric.  It has a blocky appearance.", "This high-heeled lace-up sandal is made from vivid purple and dark gray zebra-stripe print fabric.  It has a frilly appearance.  It is accented with pastel orange feathers.", "This high-heeled buckled shoe is made from light blue denim.  It has a frilly appearance.  It is accented with brass studs.", "This high-heeled buckled knee-length boot is made from green silk.  It has a frilly appearance.", "This mid-heeled buckled shoe is made from gray satin.  It has a streamlined appearance.", "This flat-bottomed hook-and-eye ankle-length boot is made from vivid orange and blue cheetah-spot print fabric.  It has a blocky appearance.", "This low-heeled hook-and-eye sandal is made from white canvas.  It has a sleek appearance.  It is accented with silver chains and a fabric flower."]
# Women's Sandals

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/mw2oIgl_BpvttzwMSCv-UEg/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/m3tfoHxMlX1nYdOayHHpU9w/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/MnYAAOSwuAVWz9gb/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/UkIAAOSwWTRWvVNQ/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

# Heels

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/IrcAAOSwUuFWvPU5/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(10)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/nbYAAOSw~OVWz9pa/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(10)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/YNEAAOSwG-1Wz9pJ/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(10)
new_product.save

# Women's Slippers

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/i3YAAOSwuYVWm~hn/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(9) << Category.find(11)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/n5gAAOSwh-1W12Y0/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(9) << Category.find(11)
new_product.save

# Women's Boots

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/F8YAAOSwezVW0nDy/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(6)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/DuwAAOSwDuJW0oCU/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(6)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Ankle Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/BmUAAOSwpzdWr6Fu/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(6) << Category.find(10)
new_product.save

#Kids' Slippers

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/09kAAOSwAKxWZpSB/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/ms_g71GVZEX3dq86j7sa7wg/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/J2cAAOSwhkRWc1NW/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(9)
new_product.save

#Kids' Boots

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/m6UuAOnj8IJWCaFegl-namg/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(4) << Category.find(6)
new_product.save

#Kids' Sneakers

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/iIAAAOSwoudW1w5C/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(4) << Category.find(8)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs2.ebaystatic.com/d/l225/pict/182000037833_1.jpg")
new_product.categories << Category.find(3) << Category.find(4) << Category.find(8)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/mlOMTaTW8ox8oWY88bXPbRA/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(4) << Category.find(8)
new_product.save

# Kids' Sandals

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/pF0AAOSwstxVd6Y0/s-l225.jpg")
new_product.categories << Category.find(3) << Category.find(4) << Category.find(7)
new_product.save

# Men's Boots

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/VR4AAOSwFMZWronV/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(5) << Category.find(6)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/Xu4AAOSw5IJWgiGw/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(5) << Category.find(6)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/MA4AAOSwG-1WzLpI/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(5) << Category.find(6)
new_product.save

# Men's Sandals

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/hfoAAOSwPc9W1z~m/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(7)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/6J8AAOSwWTRW1Qmu/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(7)
new_product.save

# Men's Sneakers

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/md0DANSQ3QJBDU014P8Cy-w/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(8)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/m2_G8n0U5vKRtULUToWCM8A/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(8)
new_product.save

# Men's Slippers

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/mlZWzdcCpoMLiQVJrC8zGnA/s-l225.jpg")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(9)
new_product.save



