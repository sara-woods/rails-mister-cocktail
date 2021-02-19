# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Ingredient.destroy_all if Rails.env.development?

# require 'open-uri'
# require 'json'

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# json_string  = open(url).read
# json = JSON.parse(json_string)

# json["drinks"].each do |hash|
#   value = hash["strIngredient1"]
#   Ingredient.create!(name: value)
# end

Ingredient.create!(name: "Mint leaves")
Ingredient.create!(name: "Cointreau")
Ingredient.create!(name: "Olive")
Ingredient.create!(name: "Lemon peel")
Ingredient.create!(name: "Orange peel")

