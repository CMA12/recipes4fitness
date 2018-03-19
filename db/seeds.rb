# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
Ingredient.destroy_all
DayMeal.destroy_all
UserMeal.destroy_all

puts "Creating Recipes...."

Recipe.create(name: "Greek Salad", calories: 342, fat: 3, saturated_fat: 2, carbohydrates: 34, sugar: 12, cholesterol: 12, sodium: 2)


puts "Successful Seeding!!"
