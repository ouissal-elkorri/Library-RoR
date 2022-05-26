class RegistrationsController < ApplicationController
    # instantier un nouveau adherent
    def new
      @adherent = Adherent.new
    end
    def create
      @adherent = Adherent.new(adherent_params)
      if @adherent.save
      # stores saved adherent id in a session
        session[:adherent_id] = @adherent.id
        redirect_to root_path, notice: 'Compte créé successivement!'
      else
        render :new
      end
    end
    private
    def adherent_params
      # strong parameters
      params.require(:adherent).permit(:prenom, :nom, :statut, :password, :password_confirmation)
    end
  end