class UserAnswersController < ApplicationController

	def create
		@user_answer = UserAnswer.create(user_answer_params)
		question = Question.find(@user_answer.question_id)
		flash[:notice] = @user_answer.answer == question.answer ?  "Correct" : "Incorrect"
		redirect_to root_path
	end

	def user_answer_params
		params.require(:user_answer).permit(:answer, :question_id, :user_id)
	end
end
