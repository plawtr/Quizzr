class SessionsController < ApplicationController
	def new
		session[:username] = params[:username] 
		redirect_to questions_path
	end
end
