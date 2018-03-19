class CreateRecipeIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipes, foreign_key: true
      t.references :ingredients, foreign_key: true
      t.timestamps
    end
  end
end
