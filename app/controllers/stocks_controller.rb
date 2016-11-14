class StocksController < ApplicationController

  def create
  	ingredient = Ingredient.find(params[:ingredient_id])
  	current_user.add_to_pantry(ingredient)
  	redirect_to ingredients_path
  end

  def destroy
    Stock.find(params[:id]).destroy
  	redirect_to pantry_user_path(current_user)
  end

  def toggle
  	stock = Stock.find(params[:id])
  	stock.toggle
  	redirect_to pantry_user_path(current_user)
  end

  def refill
  	stock = Stock.find(params[:id])
  	stock.refill
  	redirect_to pantry_user_path(current_user)
  end
end
