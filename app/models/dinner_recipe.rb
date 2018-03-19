class DinnerRecipe < ApplicationRecord
  belongs_to :day_meals
  belongs_to :user_meal

  has_many :day_meals
end
