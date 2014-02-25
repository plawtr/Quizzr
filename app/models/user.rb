class User < ActiveRecord::Base
	validates :username, uniqueness: true
	has_many :questions
end
