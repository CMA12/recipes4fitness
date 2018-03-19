class CreateBreakfastRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :breakfast_recipes do |t|
      t.references :recipes, foreign_key: true
      t.timestamps
    end
  end
end
