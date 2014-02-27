class UsersController < ApplicationController
  def new
  	@user = User.new 
  end

  def create
  	@user = User.new(user_params)
  	if @user.save 
	  	session[:user_id] = @user.id
	  	redirect_to root_path
	  else
	  	flash[:errors] = []
	  	@user.errors.messages.each {|k, v| flash[:errors] << "#{k.to_s.capitalize} #{v.join(", ")}."}
	  	redirect_to new_user_path
	  end
  end

 private 


 	def user_params
 		params.require(:user).permit(:name, :email, :username, :password, :password_confirmation)
 	end

end
