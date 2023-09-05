module SessionsHelper
  def current_user
    if session[:login_id]
      User.find_by(login_id: session[:login_id])
    elsif (ck_id = cookies.encrypted[:id])
      user = User.find_by(id: ck_id)
      if user&.authenticated?(cookies[:remember_token])
      User.find_by(id: cookies.encrypted[:id])
      end
    end
  end
end