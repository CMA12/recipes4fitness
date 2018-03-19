class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.integer :weight
      t.string :sex
      t.integer :height
      t.integer :excercise
      t.integer :main_meal
      t.timestamps
    end
  end
end
