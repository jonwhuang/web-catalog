Category.delete_all
Product.delete_all

User.create(email: "admin@admin.com", password: "secret", admin: true)

Category.create(name: "Men's") #1
Category.create(name: "Women's") #2
Category.create(name: "Kids'") #3
Category.create(name: "Casual Shoes") #4
Category.create(name: "Dress Shoes") #5
Category.create(name: "Boots") #6
Category.create(name: "Sneakers") #7
Category.create(name: "Slippers") #8
Category.create(name: "Heels") #9
Category.create(name: "Flats") #10
Category.create(name: "Sandals") #11


shoe_descriptions = ["This mid-heeled hook-and-eye calf-length boot is made from vivid purple velvet.  It has a sporty appearance.", "This low-heeled lace-up shoe is made from yellow silk.  It has a sleek appearance.", "This low-heeled buckled shoe is made from retro design print fabric designed in light magenta, vivid pink, vivid blue, and white.  It has a sleek appearance.", "This mid-heeled buckled calf-length boot is made from plaid fabric designed in vivid orange, yellow, blue, and white.  It has a streamlined appearance.", "This low-heeled lace-up sandal is made from white velvet.  It has a frilly appearance.", "This mid-heeled buckled sandal is made from gray denim.  It has a blocky appearance.", "This low-heeled hook-and-eye shoe is made from vivid turquoise straw.  It has a sporty appearance.  It is accented with silver chains.", "This low-heeled buckled shoe is made from vivid red and black zebra-stripe print fabric.  It has a blocky appearance.  It is accented with beads and a fabric flower.", "This high-heeled buckled shoe is made from magenta and vivid turquoise cheetah-spot print fabric.  It has a blocky appearance.", "This high-heeled lace-up sandal is made from vivid purple and dark gray zebra-stripe print fabric.  It has a frilly appearance.  It is accented with pastel orange feathers.", "This high-heeled buckled shoe is made from light blue denim.  It has a frilly appearance.  It is accented with brass studs.", "This high-heeled buckled knee-length boot is made from green silk.  It has a frilly appearance.", "This mid-heeled buckled shoe is made from gray satin.  It has a streamlined appearance.", "This flat-bottomed hook-and-eye ankle-length boot is made from vivid orange and blue cheetah-spot print fabric.  It has a blocky appearance.", "This low-heeled hook-and-eye sandal is made from white canvas.  It has a sleek appearance.  It is accented with silver chains and a fabric flower."]

# Men's Dress Shoes

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache2.asset-cache.net/gc/482179295-close-up-of-mans-dress-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=aDb2qEmc72LQFT2PlAYyFEm4o0BVDtlJDo8A%2fqOg1Vg%3d")
new_product.categories << Category.find(1) << Category.find(5)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache4.asset-cache.net/gc/80566570-close-up-of-hands-tying-shoelace-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=01ZoSK6Y8%2fR1msJeQV7ueDHQaLSPdDzUMRpnb7K1Fv8%3d")
new_product.categories << Category.find(1) << Category.find(5)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache4.asset-cache.net/gc/172417586-elegant-black-leather-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=DlwKA3grBZR1B5RNT%2fmIAa5MZ4zx%2b14QJDmbKdQLxGo%3d")
new_product.categories << Category.find(1) << Category.find(5)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/185408145-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=%2fMJJr1mSbUJHBFNmMMFGmt3YHcTcQ2p27ooXnb4hjIY%3d")
new_product.categories << Category.find(1) << Category.find(5)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/172801724-black-dress-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=x5%2bu%2fYqb8iCilyV%2b5ucjAqGscBqS8LoulPnGwxAIOjM%3d")
new_product.categories << Category.find(1) << Category.find(5)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dwc4b2fc9a/images/original/154stewartwle_rope_side.jpg?sw=520&sh=520&sm=fit
")
new_product.categories << Category.find(1) << Category.find(4)
new_product.save

# Men's Boots

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/182404380-military-combat-boots-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=hubMezJhRX9PsLNu3tLq0O37iM2PG7X5Bb89qYjy%2b8U%3d")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(6)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/173004124-winter-boots-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=bJF1HpfLjJHPqAfZc%2bAZ3gNL4hAqC%2fcJ9bo%2byql233I%3d")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(6)
new_product.save

# Heels

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache4.asset-cache.net/gc/605184731-red-stilettos-on-wooden-floor-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=QI6OOHOICY%2fYFpX7k0fpeETRdDELM%2fx4YFEkggQfgMg%3d")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/605184729-red-stilettos-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=cWldiNUiBjMwnSs9h%2bxAVeFQscgdojaDQHqNi6UlIDM%3d")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache2.asset-cache.net/gc/598314331-womens-high-heel-dress-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=NFWgxvgJyuZQ4y9DLDV3s9aiyWcYhk08uveoG0%2bnvbI%3d")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/598314341-high-heel-dress-shoes-left-on-stairs-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=KZfI5KUPtxBeqYUrJKOwh5q%2bsnqukdU8gg6EHoI19Ls%3d")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache2.asset-cache.net/gc/185231924-red-high-heel-shoe-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=3UMT7nh85bl%2fvbNyJ2ETjpKaKiruf89Loy%2fE9q3%2bPE8%3d")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dwe939a5a9/images/original/HIME85WAK_000241_SIDE.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Heels", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://dx0woejilafh2.cloudfront.net/sys-master/m0/MM/2015/2/4526075406/003/s3details/4526075406003-b-pappino_normal.jpg")
new_product.categories << Category.find(2) << Category.find(5) << Category.find(9)
new_product.save

# Women's Boots

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/185317324-winter-boots-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=mUW7JSYBxP5bmscLWP6037Djg%2fhcF8gcr4ftU7cWxB0%3d")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(6) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache4.asset-cache.net/gc/185106837-brown-leather-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=8%2fjDOaP37LZCK7TRv8iv1j5B5qLnrxLtxfxHLQa9GUU%3d")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(6) << Category.find(9)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Boots", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://dx0woejilafh2.cloudfront.net/sys-master/m0/MM/2015/2/4796175306/002/s3details/4796175306002-b-manto_normal.jpg")
new_product.categories << Category.find(2) << Category.find(4) << Category.find(6) << Category.find(9)
new_product.save

# Sneakers

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache4.asset-cache.net/gc/185246744-sports-shoe-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=gyGlDG8ebVqBA8HjzGJ0IzKPFqKrdh%2bBT9tPaLMQnf0%3d")
new_product.categories << Category.find(2) << Category.find(3) << Category.find(7)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dwdb8c088c/images/original/154miamiclf_white_side.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(7)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache3.asset-cache.net/gc/155096664-tennis-shoes-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=9TmDLv3jDiMeJ3A8lHaOM1TJC2AJwyXQ0qiDpxH4HdY%3d")
new_product.categories << Category.find(1) << Category.find(2) << Category.find(3) << Category.find(4) << Category.find(7)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sneakers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://cache2.asset-cache.net/gc/173904072-isolated-on-white-pair-of-brand-new-trainers-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=r11FMAflHDX1SFSfVWGzmUNK33kUjPyx2%2bH75OCado4%3d")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(7)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Shoes", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dw3426ec57/images/rollover/GROVECRK_040888_MODEL.jpg?sw=245&sh=245&sm=fit
")
new_product.categories << Category.find(1) << Category.find(4) << Category.find(7)
new_product.save


# Sandals

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dw7dddbebb/images/original/NICKELFLATNAP_025123_SIDE.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(10) << Category.find(11)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Flats", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dw0df6e802/images/original/WEAVEFLATDNG_000702_SIDE.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(10) << Category.find(11)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Sandals", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "https://dx0woejilafh2.cloudfront.net/sys-master/m0/MM/2016/1/4521176106/002/s3master/4521176106002-a-verna_thumbnail.jpg")
new_product.categories << Category.find(2) << Category.find(10) << Category.find(11)
new_product.save



# Slippers

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dwbcf6f202/images/original/112sloanecgf_black_side.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(8)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Slippers", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://demandware.edgesuite.net/sits_pod28/dw/image/v2/AAWE_PRD/on/demandware.static/-/Sites-jch-master-product-catalog/default/dw8eaf2409/images/original/FOXLEYDSU_040489_SIDE.jpg?sw=520&sh=520&sm=fit")
new_product.categories << Category.find(2) << Category.find(8)
new_product.save

new_product = Product.new(title: Faker::Company.name + " Flats", description: shoe_descriptions[rand(0..14)], price: Faker::Commerce.price, picture_link: "http://dx0woejilafh2.cloudfront.net/sys-master/m0/MM/2016/1/4521216606/003/s3master/4521216606003-a-piombo_thumbnail.jpg")
new_product.categories << Category.find(2) << Category.find(8) << Category.find(10)
new_product.save

