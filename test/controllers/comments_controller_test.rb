require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "comment created without any details not saved" do
		comment = Comment.create
		assert_not comment.save, "comment not saved"
	end

end
