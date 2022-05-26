class SessionsController < ApplicationController
    def new; end
    def create
      adherent = Adherent.find_by(nom: params[:nom])
      # finds existing user, checks to see if user can be authenticated
      if adherent.present? && adherent.authenticate(params[:password])
      # sets up user.id sessions
        session[:adherent_id] = adherent.id
        redirect_to root_path, notice: 'Logged in successfully'
      else
        flash.now[:alert] = 'Invalid email or password'
        render :new
      end
    end
    def destroy
      # deletes user session
      session[:adherent_id] = nil
      redirect_to root_path, notice: 'Logged Out'
    end
  end