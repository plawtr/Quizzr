class SessionsController < ApplicationController
	def new
		username = params[:username]
		password = params[:password]
		user = User.authenticate(username, password)

  	if user 
  		session[:username] = user.username	
  	else
  		flash[:errors] = ["The email or password is incorrect"]
  	end
  	redirect_to root_path
	end

	def logoff
		session[:username] = nil
		redirect_to root_path
	end
end
