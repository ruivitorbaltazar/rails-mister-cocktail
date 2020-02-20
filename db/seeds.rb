# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Ingredient Seed
puts 'Throwing out all the ingredients 🗑'
Ingredient.delete_all

puts 'Buying 3 ingredients 🛒'
Ingredient.create(name: 'lemon')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')

puts 'Ingredients are set! 🍶'

## Cocktail Seed
# puts 'Pouring all cocktails down the drain 😩'
# Cocktail.delete_all

# puts 'Making 3 cocktails 🍹'
# Cocktail.create(name: 'Whiskey Sour')
# Cocktail.create(name: 'Margarita')
# Cocktail.create(name: 'Negroni')

# puts 'Drinks are served! 🍻'
