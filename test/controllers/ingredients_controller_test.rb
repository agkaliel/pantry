require 'test_helper'

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  
  test "should redirect index when not logged in" do
  	get ingredients_path
  	assert_redirected_to login_url  	
  end
end
