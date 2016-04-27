class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :authorize

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
   if(current_user == nil)
     flash[:error] = "hey dingus! you gotta be signed in to do that!!!!"
     redirect_to root_path
   end
 end

end
