class ApplicationController < ActionController::Base
  #各ページの楽曲検索フォームに使用する変数を定義
  $key_selector = ["all"].concat(Note.pluck(:key).uniq)
  $scale_selector = ["all"].concat(Note.pluck(:scale).uniq)
  $rhythm_selector = ["all"].concat(Tune.pluck(:rhythm).uniq)

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


  helper_method :current_user

end