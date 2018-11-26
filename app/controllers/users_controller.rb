class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(current_user.id)
  end
  def update
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
end