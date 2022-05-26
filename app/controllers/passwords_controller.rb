class PasswordsController < ApplicationController
    # allows only logged in users
    before_action :require_adherent_logged_in!
    def edit; end
    def update
      # update user password
      if Current.adherent.update(password_params)
        redirect_to root_path, notice: 'Password Updated'
      else
        render :edit
      end
    end
    private
    def password_params
      params.require(:adherent).permit(:password, :password_confirmation)
    end
  end