require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

	include Devise::TestHelpers

	test "login test" do
		sign_in users(:one)
		assert_response :success, "Login test"
	end

	test "should get index" do
		get :index
		assert_response :success, "gets index"
	end

end
