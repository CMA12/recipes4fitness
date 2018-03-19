class CreateMealPlanners < ActiveRecord::Migration[5.1]
  def change
    create_table :meal_planners do |t|
      t.references :day_meals, foreign_key: true
      t.date :month
      t.timestamps
    end
  end
end
