class CreateUserMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_meals do |t|
      t.references :breakfast_recipes, foreign_key: true
      t.references :lunch_recipes, foreign_key: true
      t.references :dinner_recipes, foreign_key: true
      t.timestamps
    end
  end
end
