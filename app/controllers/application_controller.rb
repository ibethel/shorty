class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from AbstractController::ActionNotFound, with: :render_short
  
  private
    
    def render_short
      @short = Short.find_by_contracted(params[:a])
      @short.record_visit(request.env['HTTP_REFERER'])
      respond_to do |format|
        format.html { redirect_to(@short.expanded) }
      end
    end
end