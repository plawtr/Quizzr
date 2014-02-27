class Question < ActiveRecord::Base
	validates :body, uniqueness: true
	validates :answer, inclusion: { in: [true, false] }
	
	belongs_to :user
	has_many :user_answers
end
