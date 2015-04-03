class Api::ShortsController < ApiController

  def index
    @shorts = @user.shorts.limit(params[:limit] || 10).all

    respond_to do |format|
      format.json { render json: { status_code: 200, status_txt: "OK", shorts: @shorts } }
      format.xml  {}
    end
  end


  def show
    @short = Short.find_by_contracted(params[:id])

    respond_to do |format|
      format.json { render json: { status_code: 200, status_txt: "OK", shorts: @short } }
      format.xml  {}
    end
  end


  def create
    @short = Short.new(permitted_params[:short])
    @short.user = @user

    respond_to do |format|
      if @short.save
        format.json { render json: { status_code: 200, status_txt: "OK", shorts: @short } }
        format.xml  {}
      else
        format.json { render json: { status_code: 500, status_txt: @short.errors.full_messages.first } }
        format.xml { render "api/shorts/errors/create" }
      end
    end
  end

  private

  def permitted_params
    params.permit(short: [:expanded, :contracted])
  end

end
