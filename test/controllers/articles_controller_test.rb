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

	test "article created without any details not saved" do
		article = Article.create
		assert_not article.save, "article not saved"
	end

	test "article 1 show" do
		get(:show, {'id' => "1"})
		assert_response :success, "got article 1 show"
	end

end
