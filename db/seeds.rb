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

new_product = Product.new(title: Faker::Company.name + "sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/mw2oIgl_BpvttzwMSCv-UEg/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + "sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/m/m3tfoHxMlX1nYdOayHHpU9w/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + "sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/MnYAAOSwuAVWz9gb/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

new_product = Product.new(title: Faker::Company.name + "sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://thumbs.ebaystatic.com/images/g/UkIAAOSwWTRWvVNQ/s-l225.jpg")
new_product.categories << Category.find(2) << Category.find(7) << Category.find(11) << Category.find(4)
new_product.save

