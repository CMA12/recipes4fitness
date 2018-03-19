class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :calories
      t.integer :fat
      t.integer :saturated_fat
      t.integer :carbohydrates
      t.integer :sugar
      t.integer :cholesterol
      t.integer :sodium
      t.timestamps
    end
  end
end
