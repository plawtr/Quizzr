class SessionsController < ApplicationController
	def new
		session[:username] = params[:username] 
		redirect_to questions_path
	end

	def logoff
		session[:username] = nil
		redirect_to root_path
	end
end
