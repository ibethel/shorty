class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  rescue_from AbstractController::ActionNotFound, with: :render_short
  
  private
    
    def render_short
      @short = Short.find_by_contracted(params[:a])
      @short.record_visit(request.env['HTTP_REFERER'])
      respond_to do |format|
        format.html { redirect_to(@short.expanded) }
      end
    end
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def require_authentication
      redirect_to "/auth/google_apps" unless current_user
    end
    
end