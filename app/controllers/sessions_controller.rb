class SessionsController < ApplicationController
	def new
		username = params[:username]
		password = params[:password]
		user = User.authenticate(username, password)

  	if user 
  		session[:user_id] = user.id	
  	else
  		flash[:errors] = ["The email or password is incorrect"]
  	end
  	redirect_to root_path
	end

	def logoff
		session[:user_id] = nil
		flash[:notice] =  "Goodbye!"
		redirect_to root_path
	end
end
