class UsersController < ApplicationController

  private def user_params
    attrs = [
      :user_id,
      :name,
      :pref,
      :date,
      :memo
    ]
    arrs << :password if params[:action] == "create"
    params.require(:user).permit(attrs)
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(session[:user_id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end