require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "create article" do
  	a = @article
    assert_nil a.show, "Nill here"
  end
end
