require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
  	@ingredient = Ingredient.new(description: "Example Ingredient")
  end

  test "should be valid" do
  	assert @ingredient.valid?
  end

  test "name should be present" do
    @ingredient.description = "     "
    assert_not @ingredient.valid?
  end

  test "descriptions should be unique" do
    duplicate_ingredient = @ingredient.dup

    @ingredient.save
    assert_not duplicate_ingredient.valid?
  end

  test "show users who have this ingredient" do
    michael = users(:michael)
    broccoli = ingredients(:broccoli)
    michael.add_to_pantry(broccoli)
    assert broccoli.users.include?(michael)
  end
end
