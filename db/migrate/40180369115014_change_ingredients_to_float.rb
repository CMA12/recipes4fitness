class ChangeIngredientsToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :ingredients, :calories, :float
    change_column :ingredients, :fat, :float
    change_column :ingredients, :saturated_fat, :float
    change_column :ingredients, :carbohydrates, :float
    change_column :ingredients, :sugar, :float
    change_column :ingredients, :cholesterol, :float
    change_column :ingredients, :sodium, :float
  end
end
