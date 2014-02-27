class QuestionsController < ApplicationController

	def index
		@question = Question.first
		@user_answer = UserAnswer.new
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.create(question_params)
		redirect_to new_question_path
	end

	def question_params
		params.require(:question).permit(:body, :answer, :user_id)
	end

end
