class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  rescue_from AbstractController::ActionNotFound, with: :render_short
  
  private
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def require_authentication
      redirect_to "/auth/google_oauth2" unless current_user
    end
    
    def render_404
      render template: "errors/404"
    end
end
