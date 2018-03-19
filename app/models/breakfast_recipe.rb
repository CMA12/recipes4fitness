class BreakfastRecipe < ApplicationRecord
  belongs_to :recipes

  has_many :day_meals

end
