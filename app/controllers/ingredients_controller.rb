class IngredientsController < ApplicationController
  before_action :logged_in_user, only: :index


  def index
  	@ingredients = Ingredient.all - current_user.ingredients
  end


end
