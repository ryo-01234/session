class SessionsController < ApplicationController
  def create
    user = User.find_by(user_id: params[:user_id])
    if user&.authenticate(params[:password])
      session[:user_id] = user.user_id
      flash.alert = "ログインしました"
    else
      flash.alert = "IDかパスワードが正しくありません"
    end
    redirect_to :root
  end

  def destroy
    session.delete(:user_id)
    redirect_to :root, status: :see_other, alert: "ログアウトしました"
  end
end
