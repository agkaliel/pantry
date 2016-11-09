class AddIndexToIngredientsDescription < ActiveRecord::Migration[5.0]
  def change
  	add_index :ingredients, :description, unique:true
  end
end
