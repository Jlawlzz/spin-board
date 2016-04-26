class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    user_create(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username,
                                 :password,
                                 :password_confirmation,
                                 :email)
  end

  def user_create(user)
    if user.save
      session[:user_id] = user.id
      redirect_to links_path
    else
      redirect_to signup_path
    end
  end

end
