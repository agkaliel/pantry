class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.integer :quantity
      t.boolean :active

      t.timestamps
    end
    add_index :stocks, :user_id
    add_index :stocks, [:user_id, :ingredient_id], unique: true 
  end
end
