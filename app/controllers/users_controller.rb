class UsersController < ApplicationController

  private def user_params
    attrs = [
      :login_id,
      :name,
      :pref,
      :date,
      :memo
    ]
    attrs << :password if params[:action] == "create"
    params.require(:user).permit(attrs)
  end

  def info
    @user = User.find(params[:id])
    @note = Note.where(user_id: params[:id]).where(status: "public")
  end

  def show
    @user = current_user
    @note = Note.where(user_id: current_user)
  end

  def new
    @user = User.new
  end

  def edit
    @user = current_user
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
    @user = current_user
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