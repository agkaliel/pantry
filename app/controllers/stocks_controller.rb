class StocksController < ApplicationController


  def create
  	ingredient = Ingredient.find(params[:id])
    current_user.add_to_pantry(ingredient)
    respond_to do |format|
      format.html
      format.js
    end
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
