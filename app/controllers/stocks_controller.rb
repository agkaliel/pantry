class StocksController < ApplicationController

  def create
  	ingredient = Ingredient.find(params[:ingredient_id])
  	current_user.add_to_pantry(ingredient)
  	redirect_to ingredients_path
  end

end
