require 'test_helper'

class StockTest < ActiveSupport::TestCase

	def setup
	  @stock = Stock.new(user_id: users(:michael).id,
						   ingredient_id: ingredients(:broccoli).id,
						   quantity: 2)
	end

	test "should be valid" do 
	  assert @stock.valid?		
	end

	test "should require a user_id" do
	  @stock.user_id = nil
	  assert_not @stock.valid?
	end

	test "should require a ingredient_id" do
	  @stock.ingredient_id = nil
	  assert_not @stock.valid?
	end

	test "should require a quantity" do
	  @stock.ingredient_id = nil
	  assert_not @stock.valid?
	end

end
