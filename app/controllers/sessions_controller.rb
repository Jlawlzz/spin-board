class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email])
    sign_user_in(user)
  end

  private

  def sign_user_in(user)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to links_path
    else
      redirect_to login_path
    end
  end

end
