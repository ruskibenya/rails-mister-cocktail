# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'
require 'faker'



puts "deleting ingredients"
Ingredient.destroy_all
puts "deleting cocktails"
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
cocktail_serialized = open(url).read
parsed_cocktails = JSON.parse(cocktail_serialized)

ingredients = []
parsed_cocktails["drinks"].each do |drink|
  ingredients.push(drink["strIngredient1"])
end

puts "creating user"
user = User.create(email: "test@test.com", password: "123456", photo: './app/assets/images/icecube.png')

puts "creating ingredients"
ingredients.each do |ingredient|
  Ingredient.create(name: ingredient, photo: './app/assets/images/icecube.png')
end

puts "creating cocktails"
10.times do
  Cocktail.create!(user: user, name: Faker::Dessert.name, glass: "coupe", base_spirit: "rum", flavor: "Fruity/Citrus-Forward", difficulty: "Medium", strength: "Medium", prep_time: "medium", description: "The best Daiquiris aren’t made in machines and garnished with mini umbrellas. This elegant take on the tropical classic combines freshly squeezed lime juice, real sugar and world-class rum.", photo: "./app/assets/images/cocktail.png")
end

puts "finished seeding"
