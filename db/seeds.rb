url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
json = JSON.parse(response.body, symbolize_names: true)

puts 'Throwing out all the cocktails 🗑'
Cocktail.delete_all

puts 'Throwing out all the ingredients 🗑'
Ingredient.delete_all

puts 'Buying ingredients 🛒'
json[:drinks].each do |drink|
  name = drink[:strIngredient1]
  puts "* #{name}"
  Ingredient.create!(name: name)
end
# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')

puts 'Ingredients are set! 🍶'
