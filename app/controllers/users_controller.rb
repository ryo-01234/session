class UsersController < ApplicationController

  private def user_params
    attrs = [
      :user_id,
      :name,
      :pref,
      :date,
      :memo
    ]
    attrs << :password if params[:action] == "create"
    params.require(:user).permit(attrs)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by(user_id: session[:user_id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "会員登録が完了しました"
    else
      render "new"
    end
  end

  def update
    @user = User.fin(params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      redirect_to @user, notice: "会員情報を更新しました"
    else
      render "edit"
    end
  end

  def destroy
  end
end