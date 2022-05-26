class ApplicationController < ActionController::Base
    #before_action :authenticate_adherent!
    before_action :set_current_adherent
    def set_current_adherent
      # finds adherent with session data and stores it if present
      Current.adherent = Adherent.find_by(id: session[:adherent_id]) if session[:adherent_id]
    end
    def require_adherent_logged_in!
      # allows only logged in adherent
      redirect_to sign_in_path, alert: 'You must be signed in' if Current.adherent.nil?
    end
end
