require 'open-uri'
require 'json'
require 'faker'

puts "deleting reviews"
Review.destroy_all

puts "deleting doses"
Dose.destroy_all

puts "deleting cocktails"
Cocktail.destroy_all

puts "deleting ingredients"
Ingredient.destroy_all

puts "deleting users"
User.destroy_all


# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# cocktail_serialized = open(url).read
# parsed_cocktails = JSON.parse(cocktail_serialized)

# ingredients = []
# parsed_cocktails["drinks"].each do |drink|
#   ingredients.push(drink["strIngredient1"])
# end

puts "creating main user"
user = User.create(email: "test@test.com", password: "123456", remote_photo_url: "https://icon-library.net/images/rick-sanchez-icon/rick-sanchez-icon-2.jpg")

puts "creating reviewer users"
reviewer_one_photo = "https://icon-library.net/images/rick-sanchez-icon/rick-sanchez-icon-2.jpg"
reviewer_one = User.create(email: Faker::Internet.unique.email, password: "123456", remote_photo_url: reviewer_one_photo)

reviewer_two_photo = "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569952490/morty.jpg"
reviewer_two = User.create(email: Faker::Internet.unique.email, password: "123456", remote_photo_url: reviewer_two_photo)

reviewer_three_photo = "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569952647/jerry.png"
reviewer_three = User.create(email: Faker::Internet.unique.email, password: "123456", remote_photo_url: reviewer_three_photo)


puts "creating ingredients"
Ingredient.create(name: "Applejack", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944214/mister_cocktail/applejack.png")
Ingredient.create(name: "Gin", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944214/mister_cocktail/gin.jpg")
Ingredient.create(name: "Dark Rum", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/darm_rum.webp")
Ingredient.create(name: "Sweet Vermouth", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/sweet_vermouth.png")
Ingredient.create(name: "Strawberry Schnapps", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/strawberry_schnapps.png")
Ingredient.create(name: "Scotch", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/scotch.webp")
Ingredient.create(name: "Apricot Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/apricot_brandy.png")
Ingredient.create(name: "Triple Sec", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/triple_sec.png")
Ingredient.create(name: "Southern Comfort", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/southern_comfort.png")
Ingredient.create(name: "Orange Bitters", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/orange_bitters.png")
Ingredient.create(name: "Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/brandy.png")
Ingredient.create(name: "Lemon Vodka", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/lemon_vodka.png")
Ingredient.create(name: "Blended Whiskey", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944842/mister_cocktail/jameson.png")
Ingredient.create(name: "Dry Vermouth", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/dry_vermouth.png")
Ingredient.create(name: "Amaretto", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/amaretto.png")
Ingredient.create(name: "Iced Tea", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569944841/mister_cocktail/iced_tea.png")
Ingredient.create(name: "Champagne", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/champagne.png")
Ingredient.create(name: "Coffee Liqueur", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/coffe_liqueur.png")
Ingredient.create(name: "Bourbon", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/bourbon.webp")
Ingredient.create(name: "Tequila", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945760/mister_cocktail/tequila.png")
Ingredient.create(name: "Vodka", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945759/mister_cocktail/vodka.png")
Ingredient.create(name: "Anejo Rum", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945754/mister_cocktail/anejo_rum.png")
Ingredient.create(name: "Bitters", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945754/mister_cocktail/bitters.png")
Ingredient.create(name: "Sugar", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945758/mister_cocktail/sugar.png")
Ingredient.create(name: "Kahlua", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945757/mister_cocktail/kahlua.png")
Ingredient.create(name: "Brown Sugar", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/brown_sugar.png")
Ingredient.create(name: "Dubonnet Rouge", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945756/mister_cocktail/dubonnet.png")
Ingredient.create(name: "Lime Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945757/mister_cocktail/lime_juice.png")
Ingredient.create(name: "Irish Whiskey", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947726/mister_cocktail/jameson.png")
Ingredient.create(name: "Apple Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945754/mister_cocktail/apple_brandy.png")
Ingredient.create(name: "Soda Water", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945758/mister_cocktail/soda_water.jpg")
Ingredient.create(name: "Cherry Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/cherry_brandy.png")
Ingredient.create(name: "Creme de Cacao", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945755/mister_cocktail/creme-de-cocoa-white.png")
Ingredient.create(name: "Grenadine", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569945758/mister_cocktail/grenadine.png")
Ingredient.create(name: "Port", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/port.png")
Ingredient.create(name: "Coffee Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947721/mister_cocktail/coffee_brandy.png")
Ingredient.create(name: "Red Wine", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/red_wine.jpg")
Ingredient.create(name: "Rum", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947736/mister_cocktail/white_rum.webp")
Ingredient.create(name: "Grapefruit Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947725/mister_cocktail/grapefruit_juice.jpg")
Ingredient.create(name: "Ricard", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947731/mister_cocktail/ricard.png")
Ingredient.create(name: "Sherry", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947731/mister_cocktail/sherry.png")
Ingredient.create(name: "Cognac", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947721/mister_cocktail/cognac.jpg")
Ingredient.create(name: "Sloe Gin", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947734/mister_cocktail/sloe_gin.png")
Ingredient.create(name: "Apple Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947718/mister_cocktail/apple_juice.jpg")
Ingredient.create(name: "Pineapple Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/pineapple_juice.jpg")
Ingredient.create(name: "Lemon Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947729/mister_cocktail/lemon_juiice.png")
Ingredient.create(name: "Simple Syrup", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947732/mister_cocktail/simple_syrup.png")
Ingredient.create(name: "Milk", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947729/mister_cocktail/milk.png")
Ingredient.create(name: "Strawberries", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947733/mister_cocktail/strawberries.png")
Ingredient.create(name: "Chocolate Syrup", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947721/mister_cocktail/chocolate_syrup.png")
Ingredient.create(name: "Yogurt", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947735/mister_cocktail/yogurt.png")
Ingredient.create(name: "Mango", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947728/mister_cocktail/mango.png")
Ingredient.create(name: "Ginger", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947724/mister_cocktail/ginger.png")
Ingredient.create(name: "Lime", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947728/mister_cocktail/lime.png")
Ingredient.create(name: "Cantaloupe", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947719/mister_cocktail/cantaloupe.jpg")
Ingredient.create(name: "Berries", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947718/mister_cocktail/berries.png")
Ingredient.create(name: "Grapes", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947724/mister_cocktail/grapes.png")
Ingredient.create(name: "Kiwi", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947726/mister_cocktail/kiwi.png")
Ingredient.create(name: "Tomato Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947734/mister_cocktail/tomato_juice.jpg")
Ingredient.create(name: "Cocoa Powder", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947720/mister_cocktail/cocoa_powder.png")
Ingredient.create(name: "Chocolate", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947720/mister_cocktail/chocolate.png")
Ingredient.create(name: "Light Rum", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947736/mister_cocktail/white_rum.webp")
Ingredient.create(name: "Heavy Cream", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947725/mister_cocktail/heavy_cream.png")
Ingredient.create(name: "Galliano", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947723/mister_cocktail/galliano.png")
Ingredient.create(name: "Peach Vodka", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/peach_vodka.png")
Ingredient.create(name: "Ouzo", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947729/mister_cocktail/ouzo.png")
Ingredient.create(name: "Coffee", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947720/mister_cocktail/coffee.png")
Ingredient.create(name: "Spiced Rum", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947732/mister_cocktail/spiced_rum.png")
Ingredient.create(name: "Water", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947734/mister_cocktail/water.png")
Ingredient.create(name: "Espresso", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947723/mister_cocktail/espresso.png")
Ingredient.create(name: "Orange", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947738/mister_cocktail/orange.png")
Ingredient.create(name: "Cranberries", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947722/mister_cocktail/cranberries.png")
Ingredient.create(name: "Johnnie Walker", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947726/mister_cocktail/johnnie_walker.png")
Ingredient.create(name: "Apple Cider", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947718/mister_cocktail/apple_cider.jpg")
Ingredient.create(name: "Everclear", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947723/mister_cocktail/everclear.png")
Ingredient.create(name: "Cranberry Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947722/mister_cocktail/cranberry_juice.jpg")
Ingredient.create(name: "Egg Yolk", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947723/mister_cocktail/egg_yolk.jpg")
Ingredient.create(name: "Egg", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947723/mister_cocktail/egg.jpg")
Ingredient.create(name: "Grape Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947725/mister_cocktail/grape_juice.jpg")
Ingredient.create(name: "Peach Nectar", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/peach_nectar.png")
Ingredient.create(name: "Lemon", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947729/mister_cocktail/lemon.png")
Ingredient.create(name: "Lemonade", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947728/mister_cocktail/lemonade.jpg")
Ingredient.create(name: "Lager", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947726/mister_cocktail/lagar.jpg")
Ingredient.create(name: "Whiskey", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947735/mister_cocktail/whiskey.jpg")
Ingredient.create(name: "Absolut Citron", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947717/mister_cocktail/absolut_citron.png")
Ingredient.create(name: "Pisco", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/pisco.webp")
Ingredient.create(name: "Irish Cream", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947725/mister_cocktail/irish_cream.jpg")
Ingredient.create(name: "Ale", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947718/mister_cocktail/ale.png")
Ingredient.create(name: "Chocolate Liqueur", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947720/mister_cocktail/chocolate_liqueur.png")
Ingredient.create(name: "Midori Melon Liqueur", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947731/mister_cocktail/midori.png")
Ingredient.create(name: "Sambuca", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947731/mister_cocktail/sambuca.png")
Ingredient.create(name: "Cider", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947725/mister_cocktail/cider.jpg")
Ingredient.create(name: "Sprite", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947734/mister_cocktail/Sprite.png")
Ingredient.create(name: "Blackerry Brandy", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947719/mister_cocktail/blackerry_brandy.png")
Ingredient.create(name: "Peppermint Schnapps", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947730/mister_cocktail/peppermint_schnapps.png")
Ingredient.create(name: "Creme de Cassis", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947724/mister_cocktail/Creme_de_Cassis.png")
Ingredient.create(name: "Jack Daniels", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947729/mister_cocktail/jack_daniels.jpg")
Ingredient.create(name: "Coca Cola", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569947721/mister_cocktail/coke.jpg")
Ingredient.create(name: "Cream of Coconut", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569955622/mister_cocktail/imgbin-coconut-milk-plant-milk-coconut-cream-milk-PmP1jaY5AQdfgwWC0fuz0bgVg.jpg")
Ingredient.create(name: "Cachaca", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569956435/mister_cocktail/cachaca.png")
Ingredient.create(name: "Orange Juice", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569957289/mister_cocktail/orange_juice.jpg")




# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient, photo: 'icecube.png')
# end
puts "creating margarita"
Cocktail.create!(user: user, name: "Margarita", glass: "Margarita", base_spirit: "Tequila", flavor: ["Fruity", "Sour"], difficulty: "Medium", strength: "Medium", description: "The Margarita is one of the most popular cocktails in North America—for good reason. Combining the tang of lime and the sweetness of orange liqueur with the distinctive strength of tequila, our classic Margarita strikes all of the right keys.
  Although many people reach for premade sour mix, we highly recommend using fresh lime juice. The end result is—let’s face it—superior. When talking Margaritas, it’s easy to get lost in stories about who invented the drink or get mired in debates over salt versus no salt; blended or frozen; triple sec, Cointreau or Grand-Marnier. In our opinion, this version is the tried-and-true recipe for the best Margarita you can make. Memorize it, and you’ll always impress.",
  remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569949728/mister_cocktail/margarita.png",
  instruction: ["Salt half the rim of a rocks glass and set aside.", "Add all ingredients into a shaker with ice and shake vigorously.", "Strain into the prepared glass over fresh ice.", "Garnish with a lime wedge."])

puts "creating margarita doses"
Dose.create!(ingredient: Ingredient.find_by(name: "Tequila"), quantity: "2", units: "oz", cocktail: Cocktail.find_by(name: "Margarita"))
Dose.create!(ingredient: Ingredient.find_by(name: "Lime Juice"), quantity: "1", units: "oz", cocktail: Cocktail.find_by(name: "Margarita"))
Dose.create!(ingredient: Ingredient.find_by(name: "Orange"), quantity: "0.5", units: "oz", cocktail: Cocktail.find_by(name: "Margarita"))
Dose.create!(ingredient: Ingredient.find_by(name: "Simple Syrup"), quantity: "0.5", units: "oz", cocktail: Cocktail.find_by(name: "Margarita"))

puts "creating margarita reviews"
margarita = Cocktail.find_by(name: "Margarita")
Review.create!(content: "A well made margarita is a perfect drink. This has my family wanting me to make them margaritas all the time. Blessing and a curse.", rating: 5, user_id: reviewer_one.id, cocktail: margarita)
Review.create!(content: "Worked great. Had tried a couple of other recipes but this one worked best.  Wife approved the Margarita!", rating: 5, user_id: reviewer_two.id, cocktail: margarita)
Review.create!(content: "Awful. Having a hard time finding an authentic recipe.  As I recall from Mexico the only ingrediants are tequila, agave nectar and lime juice but am looking for the proportions.  I tried this recipe but it tastes all wrong.", rating: 2, user_id: reviewer_three.id, cocktail: margarita)


puts "creating dry martini"
Cocktail.create!(user: user, name: "Dry Martini", glass: "Cocktail", base_spirit: "Gin", flavor: ["Spirit-Forward"], difficulty: "Medium", strength: "Strong", description: "You could stumble down a very deep, very dark rabbit hole trying to determine who mixed the world’s first Martini. Was it a California prospector during the 1849 Gold Rush or the barman at a flossy New York City hotel 50 years later? Both stories hold water. Neither will leave you feeling as blissful and content as a well-made Dry Martini.
  Start with a good London-style gin. From there, add a little (not too much!) dry vermouth and dash of orange bitters. And despite the prissy demands of a certain fictional British spy, stir (don’t shake!) the hell out of it with ice and strain it into a glass named after the cocktail itself. Twist a lemon peel, and there you have it, a Dry Martini. It’s a drink worth getting to the bottom of.",
  remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569954305/martini.png",
  instruction: ["Add all the ingredients into a mixing glass with ice and stir until very cold.", "Strain into a chilled cocktail glass.", "Garnish with a lemon twist."])

puts "creating martini doses"
Dose.create!(ingredient: Ingredient.find_by(name: "Gin"), quantity: "2.5", units: "oz", cocktail: Cocktail.find_by(name: "Dry Martini"))
Dose.create!(ingredient: Ingredient.find_by(name: "Dry Vermouth"), quantity: "0.5", units: "oz", cocktail: Cocktail.find_by(name: "Dry Martini"))
Dose.create!(ingredient: Ingredient.find_by(name: "Orange Bitters"), quantity: "1", units: "dash", cocktail: Cocktail.find_by(name: "Dry Martini"))

puts "creating dry martini reviews"
martini = Cocktail.find_by(name: "Dry Martini")
Review.create!(content: "Never NEVER stir a martini!", rating: 4, user_id: reviewer_one.id, cocktail: martini)
Review.create!(content: "Got heaps of rave reviews with this recipe! was told 'one of the best martinis they had ever had' Thank you for sharing!!", rating: 5, user_id: reviewer_two.id, cocktail: martini)
Review.create!(content: "Everyone likes their martinis different and I like this one.", rating: 5, user_id: reviewer_three.id, cocktail: martini)


puts "creating Caipirinha"
Cocktail.create!(user: user, name: "Caipirinha", glass: "Rocks", base_spirit: "Cachaca", flavor: ["Fruity", "Sour", "Sweet"], difficulty: "Medium", strength: "Strong", description: "Chances are high you encountered Brazil’s national drink, the Caipirinha, if you’ve ever traveled to the South American country. Refreshing and easy to make, the cocktail contains fresh lime juice, sugar and cachaça—a spirit as central to Brazilian identity as samba, soccer and carnival. First made in the 1500s from the fermented juice of sugar cane, cachaça is similar to rum yet distinct for its funky, grassy flavors, setting the Caipirinha apart from other sweet-and-sour cocktails.",
  remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569962085/caipirhna.jpg",
  instruction: ["In a double Old Fashioned glass, muddle the sugar and lime.", "Fill with ice, add the cachaça, and stir briefly.", "Garnish with a lime wheel."])

puts "creating Caipirinha doses"
Dose.create!(ingredient: Ingredient.find_by(name: "Lime"), quantity: "0.5", units: "part", cocktail: Cocktail.find_by(name: "Caipirinha"))
Dose.create!(ingredient: Ingredient.find_by(name: "Sugar"), quantity: "2", units: "tsp", cocktail: Cocktail.find_by(name: "Caipirinha"))
Dose.create!(ingredient: Ingredient.find_by(name: "Cachaca"), quantity: "2", units: "oz", cocktail: Cocktail.find_by(name: "Caipirinha"))

puts "creating Caipirinha reviews"
caipirinha = Cocktail.find_by(name: "Caipirinha")
Review.create!(content: "This recipe is inaccurate. A true caipirinha uses lemons not limes. In Brazil Dorshapo lemons are actually green and commonly confused with limes by anyone who is not a native. If you were to make a caipirinha in Brazil and use limes, most locals would decline to drink it.", rating: 2, user_id: reviewer_one.id, cocktail: caipirinha)
Review.create!(content: "Had them at a hotel bar in Barcelona and they used limes.Also in Mass. a Brazilian employee in a restaurant also told me to use limes.", rating: 4, user_id: reviewer_two.id, cocktail: caipirinha)
Review.create!(content: "Great drink during spring/summer seasons.", rating: 5, user_id: reviewer_three.id, cocktail: caipirinha)


puts "creating Painkiller"
Cocktail.create!(user: user, name: "Painkiller", glass: "Snifter", base_spirit: "Rum", flavor: ["Fruity", "Sweet"], difficulty: "Medium", strength: "Medium", description: "If you’re going to name your cocktail the Painkiller, it better pack a punch. Hailing from the British Virgin Islands, where it was invented sometime in the early 1970s, this twist on the Piña Colada does precisely that. Jammed full of fruity, tropical flavors, the Painkiller was later claimed by Pusser’s Rum, whose trademarked recipe tilts heavy on the pineapple juice. This version dials back the P.J. and ups the rum a half ounce for a more boozy, balanced drink.",
  remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569955376/painkiller.png",
  instruction: ["Add all ingredients into a shaker with ice and shake until well-chilled.", "Strain into a large snifter filled with pebble ice.", "Garnish with grated nutmeg and a skewered pineapple leaf and preserved cherry"])

puts "creating Painkiller doses"
Dose.create!(ingredient: Ingredient.find_by(name: "Dark Rum"), quantity: "2.5", units: "oz", cocktail: Cocktail.find_by(name: "Painkiller"))
Dose.create!(ingredient: Ingredient.find_by(name: "Pineapple Juice"), quantity: "2.5", units: "oz", cocktail: Cocktail.find_by(name: "Painkiller"))
Dose.create!(ingredient: Ingredient.find_by(name: "Orange Juice"), quantity: "1", units: "oz", cocktail: Cocktail.find_by(name: "Painkiller"))
Dose.create!(ingredient: Ingredient.find_by(name: "Cream of Coconut"), quantity: "1", units: "oz", cocktail: Cocktail.find_by(name: "Painkiller"))

puts "creating Painkiller reviews"
painkiller = Cocktail.find_by(name: "Painkiller")
Review.create!(content: "You nailed the Painkiller recipe!! The only issue is where to find Pussers Rum?", rating: 5, user_id: reviewer_one.id, cocktail: painkiller)


puts "creating Bourbon Old Fashioned"
Cocktail.create!(user: user, name: "Bourbon Old Fashioned", glass: "Rocks", base_spirit: "Bourbon", flavor: ["Spirit-Forward", "Sweet"], difficulty: "Medium", strength: "Medium", description: "When you get right down to it, the Bourbon Old Fashioned is little more than a slug of whiskey, seasoned and sweetened. Yet for all of its suave simplicity, the drink remains as relevant today as it was when it first captured drinkers’ hearts 200 years ago. In truth, you could draw a straight line connecting this drink to the first recorded definition of the cocktail category in general (circa 1806), which calls for spirits, sugar, water and bitters. You could also skip the history lesson and simply make the drink. Do the latter.",
  remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569962046/oldfashion.png",
  instruction: ["Add the sugar, bitters and water into a rocks glass, and stir until sugar is nearly dissolved.", "Fill the glass with large ice cubes, add the bourbon, and gently stir to combine the flavors.", "Express the oil of an orange peel over the glass, then drop in."])

puts "creating Bourbon Old Fashioned doses"
Dose.create!(ingredient: Ingredient.find_by(name: "Sugar"), quantity: "0.5", units: "tsp", cocktail: Cocktail.find_by(name: "Bourbon Old Fashioned"))
Dose.create!(ingredient: Ingredient.find_by(name: "Bitters"), quantity: "3", units: "dashes", cocktail: Cocktail.find_by(name: "Bourbon Old Fashioned"))
Dose.create!(ingredient: Ingredient.find_by(name: "Water"), quantity: "1", units: "tsp", cocktail: Cocktail.find_by(name: "Bourbon Old Fashioned"))
Dose.create!(ingredient: Ingredient.find_by(name: "Bourbon"), quantity: "2", units: "oz", cocktail: Cocktail.find_by(name: "Bourbon Old Fashioned"))

puts "creating Bourbon Old Fashioned reviews"
old_fashioned = Cocktail.find_by(name: "Bourbon Old Fashioned")
Review.create!(content: "In New Orleans--the place where it was invented--there are TWO bitters -- angostura and Peychaud--and four shakes of each--and there is usually a half teaspoon of maraschino juice (if used--cut back on the sugar.)", rating: 2, user_id: reviewer_one.id, cocktail: old_fashioned)
Review.create!(content: "Absolutely delicious recipe for a classic!", rating: 5, user_id: reviewer_two.id, cocktail: old_fashioned)
Review.create!(content: "You do NOT muddle and dang cherry, just the orange, and if you top my OF with soda I'm going behind your bar and showing you how to make it.", rating: 5, user_id: reviewer_three.id, cocktail: old_fashioned)


# puts "creating cocktails"
# 10.times do
#   Cocktail.create!(user: user, name: Faker::Name.unique.name , glass: "coupe", base_spirit: "rum", flavor: ["Fruity/Citrus-Forward", "Sweet", "Sour"], difficulty: "Medium", strength: "Medium", prep_time: "medium", description: "The best Daiquiris aren’t made in machines and garnished with mini umbrellas. This elegant take on the tropical classic combines freshly squeezed lime juice, real sugar and world-class rum.", remote_photo_url: "https://res.cloudinary.com/duaw4fdu2/image/upload/v1569938532/mister_cocktail/cocktail.png", instruction: ["Get the ice", "put the drink", "stir the mix", "drink it down"])
# end


# first_cocktail = Cocktail.first

# puts "creating doses"
# for i in 1..5 do
#   id = Ingredient.first.id
#   Dose.create(ingredient: Ingredient.find(id + i), quantity: "5", units: "oz", cocktail: first_cocktail)
# end

# puts "creating favorite cocktails"
# for i in 1..5 do
#   id = Cocktail.first.id
#   FavoriteCocktail.create(user: user, cocktail: Cocktail.find(id + 1))
# end

# puts "creating reviews"

# for i in 1..5 do
#   first_id = Cocktail.first.id
#   review_cocktail = Cocktail.find(first_id + i - 1)
#   for m in 1..5 do
#     review_user = User.create(email: Faker::Internet.unique.email, password: "123456", remote_photo_url: photo_url)
#     Review.create!(content: Faker::Restaurant.review, rating: rand(5), user_id: review_user.id, cocktail: review_cocktail)
#   end
# end


puts "finished seeding"
