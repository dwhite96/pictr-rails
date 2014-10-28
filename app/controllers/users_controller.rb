class UsersController < ApplicationController
  before_action :authenticate_user!
  user_signed_in?
  current_user
  user_session

  def show
    @user = User.find_by(:email).try(:authenticate)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(root_url)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
