class UserAnswersController < ApplicationController

	def create
		@user_answer = UserAnswer.new(user_answer_params)

		if @user_answer.save 
  		question = Question.find(@user_answer.question_id)
			flash[:notice] = @user_answer.answer == question.answer ?  "Correct" : "Incorrect"
  	else
	  	flash[:errors] = format_errors(@user_answer.errors.messages)
	  end

		redirect_to root_path
	end

	def user_answer_params
		params.require(:user_answer).permit(:answer, :question_id, :user_id)
	end
end
