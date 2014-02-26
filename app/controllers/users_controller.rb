class UsersController < ApplicationController
  def new
  	@user = User.new 
  end

  def create
  	@user = User.create(user_params)
  	session[:username] = @user.username
  	redirect_to root_path
  end

 private 
 	def user_params
 		params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
 	end

end
