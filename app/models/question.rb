class Question < ActiveRecord::Base
	validates :body, uniqueness: true
end
