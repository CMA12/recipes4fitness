class CreateDinnerRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :dinner_recipes do |t|
       t.references :recipes, foreign_key: true
      t.timestamps
    end
  end
end
