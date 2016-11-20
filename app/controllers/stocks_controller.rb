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
    respond_to do |format|
      format.html
      format.js
    end
  end

  def toggle
  	stock = Stock.find(params[:id])
  	stock.toggle
    respond_to do |format|
      format.html
      format.js
    end
  end

  def refill
  	stock = Stock.find(params[:id])
  	stock.refill
    respond_to do |format|
      format.html
      format.js
    end
  end
end
