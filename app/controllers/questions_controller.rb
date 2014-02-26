class QuestionsController < ApplicationController
	
	def index
		@question = Question.first
	end

	def process_question
		@question = Question.first
		@answer= params[:answer] == @question.answer.to_s ?  "Correct" : "Incorrect"
	end


end
