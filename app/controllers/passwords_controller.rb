class PasswordsController < ApplicationController
  private def password_params
    params.require(:password).permit(
      :current_password,
      :password,
      :password_confirmation
    )
  end

  def show
    if view_context.current_user
    redirect_to user_path(current_user.id)
    else
      redirect_to root_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    current_password = password_params[:current_password]

    if current_password.present?
      if @user.authenticate(current_password)
        @user.assign_attributes(password_params)
        if @user.save
          redirect_to user_path(current_user), notice: "パスワードを更新しました"
        else
          render "edit", status: :unprocessable_entity
        end
      else
        @user.errors.add(:current_password, :wrong)
      end
    else
      @user.errors.add(:current_password, :empty)
    end
  end
end
