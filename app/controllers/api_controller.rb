class ApiController < ActionController::Base
  
  before_filter :validate_credentials
  
  private
    
    def validate_credentials
      @user = User.find_by_api_key(params[:apiKey]) || User.first
      
      unless @user
        respond_to do |format|
          format.json { render json: { :status_code => 500, :status_text => "MISSING_ARG_LOGIN" } }
          format.xml { render "api/errors/user" }
        end
      end
    end
    
end