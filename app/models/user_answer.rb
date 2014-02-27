class UserAnswer < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
	validates :answer, inclusion: { in: [true, false] }
end
