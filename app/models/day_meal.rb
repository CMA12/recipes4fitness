class DayMeal < ApplicationRecord
  belongs_to :meal_planner

  has_one :breakfast_recipe
  has_one :lunch_recipe
  has_one :dinner_recipe
end
