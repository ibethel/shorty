class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  rescue_from AbstractController::ActionNotFound, with: :render_short

  private

  def current_user
    if session[:user_id]
      # remove user id, if it's not valid
      session[:user_id] = nil unless User.find_by_id(session[:user_id])
    end
    @current_user ||= User.find(session[:user_id]) if session[:user_id]

    @current_user
  end

  def require_authentication
    # don't worry about logging in while developing
    if Rails.env == "development"
      @current_user ||= User.first
    else
      puts current_user
      redirect_to "/auth/google_oauth2" unless current_user
    end
  end

  def render_404
    render template: "errors/404", status: 404
  end
end
