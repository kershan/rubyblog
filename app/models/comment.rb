class Comment < ActiveRecord::Base

	validates :commenter, presence: true, 
	length: {minimum: 5}
	validates :body, presence: true, 
	length: {minimum: 5}

	belongs_to :article
end
