class QuestionsController < ApplicationController

	def index
		@question = Question.first
	end

	def process_question
		@question = Question.first
		@answer= params[:answer] == @question.answer.to_s ?  "Correct" : "Incorrect"
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.create(question_params)
		redirect_to new_question_path

	end

	def question_params
		params.require(:question).permit(:body,:answer)
	end

end
