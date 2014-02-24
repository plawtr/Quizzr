class QuestionsController < ApplicationController
	
	def index
		@question = Question.first
	end

	def process_question
		@question = Question.first
		Rails.logger.debug "DEBUG: params are #{params}"
		if params[:answer] == @question.answer.to_s 
			Rails.logger.debug "Correct"
		else 
			Rails.logger.debug "Mehhm!!!"
		end	
		redirect_to root_path
	end


end
