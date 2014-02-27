class QuestionsController < ApplicationController

	def index
		@question = Question.first
		@user_answer = UserAnswer.new
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)		
  	if @question.save 
  		session[:temp_question_body] = nil
  	else
	  	flash[:errors] = format_errors(@question.errors.messages)
	  	session[:temp_question_body] = @question.body
	  end
	  redirect_to new_question_path
	end

	def question_params
		params.require(:question).permit(:body, :answer, :user_id)
	end

end
