class QuestionsController < ApplicationController
	
	def index
		@question = Question.first
	end

	def process_question
		@question = Question.first
		Rails.logger.debug "DEBUG: params are #{params}"
		if params[:answer] == @question.answer.to_s 
			@answer=  "Correct"
		else 
			@answer = "Incorrect"
		end	
	end


end
