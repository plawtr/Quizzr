class QuestionsController < ApplicationController

	def index
		if current_user
			@question = pick_random_question
			@user_answer = UserAnswer.new
		end
	end

	def new
		@question = Question.new
	end

	def create

		# params[:answer] = false if params[:answer] == "false"

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

	def pick_random_question
		answered_question_ids = UserAnswer.where(user_id: @user.id).map{|q| q.question_id}
		question_set = Question.where.not(user_id: @user.id).where("id NOT IN (?)", answered_question_ids)
		question_set.sample
	end

end
