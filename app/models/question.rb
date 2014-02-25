class Question < ActiveRecord::Base
	validates :body, uniqueness: true
	belongs_to :user
end
