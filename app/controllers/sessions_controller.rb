class SessionsController < ApplicationController
  def create
    user = User.find_by(login_id: params[:login_id])
    if user&.authenticate(params[:password])
      session[:login_id] = user.login_id
      params[:remember_me] == "on" ? remember(user) : forget(user)
      flash.alert = "ログインしました"
    else
      flash.alert = "IDかパスワードが正しくありません"
    end
    redirect_to :root
  end

  def destroy
    forget(view_context.current_user)
    session.delete(:login_id)
    redirect_to :root, status: :see_other, alert: "ログアウトしました"
  end

  private
  def remember(user)
    user.remember_me
    cookies.permanent.encrypted[:id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def forget(user)
    user.forget_me
    cookies.delete(:id)
    cookies.delete(:remember_token)
  end

end
