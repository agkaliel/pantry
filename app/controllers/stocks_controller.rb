class StocksController < ApplicationController

  def create
  	ingredient = Ingredient.find(params[:ingredient_id])
  	current_user.add_to_pantry(ingredient)
  	redirect_to ingredients_path
  end

  def destroy
  	ingredient = Ingredient.find(params[:ingredient_id])
  	current_user.remove_from_pantry(ingredient)
  	redirect_to pantry_user_path(current_user)
  end

end
