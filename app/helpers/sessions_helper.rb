module SessionsHelper
  def current_user
    if session[:user_id]
      User.find_by(user_id: session[:user_id])
    elsif (ck_id = cookies.encrypted[:id])
      user = User.find_by(id: ck_id)
      if user&.authenticated?(cookies[:remember_token])
      User.find_by(id: cookies.encrypted[:id])
      end
    end
  end
end