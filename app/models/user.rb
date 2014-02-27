class User < ActiveRecord::Base
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :on => :create
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :email
  validates_uniqueness_of :username
	has_many :questions
  has_many :user_answers
  has_secure_password

	def self.authenticate(username, password)
    user = find_by_username(username)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end



