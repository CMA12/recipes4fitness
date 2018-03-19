# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 40180369115012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakfast_recipes", force: :cascade do |t|
    t.bigint "recipes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipes_id"], name: "index_breakfast_recipes_on_recipes_id"
  end

  create_table "day_meals", force: :cascade do |t|
    t.bigint "breakfast_recipes_id"
    t.bigint "lunch_recipes_id"
    t.bigint "dinner_recipes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breakfast_recipes_id"], name: "index_day_meals_on_breakfast_recipes_id"
    t.index ["dinner_recipes_id"], name: "index_day_meals_on_dinner_recipes_id"
    t.index ["lunch_recipes_id"], name: "index_day_meals_on_lunch_recipes_id"
  end

  create_table "dinner_recipes", force: :cascade do |t|
    t.bigint "recipes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipes_id"], name: "index_dinner_recipes_on_recipes_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "fat"
    t.integer "saturated_fat"
    t.integer "carbohydrates"
    t.integer "sugar"
    t.integer "cholesterol"
    t.integer "sodium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lunch_recipes", force: :cascade do |t|
    t.bigint "recipes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipes_id"], name: "index_lunch_recipes_on_recipes_id"
  end

  create_table "meal_planners", force: :cascade do |t|
    t.bigint "day_meals_id"
    t.date "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_meals_id"], name: "index_meal_planners_on_day_meals_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipes_id"
    t.bigint "ingredients_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredients_id"], name: "index_recipe_ingredients_on_ingredients_id"
    t.index ["recipes_id"], name: "index_recipe_ingredients_on_recipes_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "fat"
    t.integer "saturated_fat"
    t.integer "carbohydrates"
    t.integer "sugar"
    t.integer "cholesterol"
    t.integer "sodium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_meals", force: :cascade do |t|
    t.bigint "breakfast_recipes_id"
    t.bigint "lunch_recipes_id"
    t.bigint "dinner_recipes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breakfast_recipes_id"], name: "index_user_meals_on_breakfast_recipes_id"
    t.index ["dinner_recipes_id"], name: "index_user_meals_on_dinner_recipes_id"
    t.index ["lunch_recipes_id"], name: "index_user_meals_on_lunch_recipes_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.integer "age"
    t.integer "weight"
    t.string "sex"
    t.integer "height"
    t.integer "excercise"
    t.integer "main_meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "breakfast_recipes", "recipes", column: "recipes_id"
  add_foreign_key "day_meals", "breakfast_recipes", column: "breakfast_recipes_id"
  add_foreign_key "day_meals", "dinner_recipes", column: "dinner_recipes_id"
  add_foreign_key "day_meals", "lunch_recipes", column: "lunch_recipes_id"
  add_foreign_key "dinner_recipes", "recipes", column: "recipes_id"
  add_foreign_key "lunch_recipes", "recipes", column: "recipes_id"
  add_foreign_key "meal_planners", "day_meals", column: "day_meals_id"
  add_foreign_key "recipe_ingredients", "ingredients", column: "ingredients_id"
  add_foreign_key "recipe_ingredients", "recipes", column: "recipes_id"
  add_foreign_key "user_meals", "breakfast_recipes", column: "breakfast_recipes_id"
  add_foreign_key "user_meals", "dinner_recipes", column: "dinner_recipes_id"
  add_foreign_key "user_meals", "lunch_recipes", column: "lunch_recipes_id"
end
