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
    @short = Short.create(params[:short])

    respond_to do |format|
      format.json { render json: { status_code: 200, status_txt: "OK", shorts: @short } }
      format.xml  {}
    end
  end
  
end
