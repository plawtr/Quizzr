class Question < ActiveRecord::Base
	validates :body, uniqueness: true
	belongs_to :user
	has_many :user_answers
end
