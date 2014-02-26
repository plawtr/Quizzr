module ApplicationHelper

	  def current_user
  	begin
  		@user = User.find(session[:user_id])
  	rescue
  		nil
  	end
  end
  
end
