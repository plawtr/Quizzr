class Question < ActiveRecord::Base
	validates :body, uniqueness: true
	validates_presence_of :answer, :on => :create
	belongs_to :user
end
