class Admin::ShortsController < AdminController
  # GET admin/shorts
  # GET admin/shorts.xml
  def index
    if params[:include_bethel_tv]
      @shorts = Short.page(params[:page])
      @including_bethel_tv = true
      @view_count = Visit.count(:all)
    else
      @shorts = Short.exclude_bethel_tv.page(params[:page])
      @view_count = Visit.joins(:short).where("expanded NOT LIKE '%bethel.tv%'").count()
      @including_bethel_tv = false
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shorts }
    end
  end

  # GET admin/shorts/1
  # GET admin/shorts/1.xml
  def show
    @short = Short.find_by_contracted(params[:a])
    redirect_to edit_admin_short_path(@short)
  end

  # GET admin/shorts/new
  # GET admin/shorts/new.xml
  def new
    @short = Short.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short }
    end
  end

  # GET admin/shorts/1/edit
  def edit
    @short = Short.find(params[:id])
  end

  # POST admin/shorts
  # POST admin/shorts.xml
  def create
    @short = Short.new(permitted_params[:short])
    # make the short code downcase because the code is now not case sensitive
    @short.contracted = @short.contracted.downcase
    @short.user = @current_user

    respond_to do |format|
      if @short.save
        format.html { redirect_to(admin_shorts_path, :notice => 'Short was successfully created.') }
        format.xml  { render :xml => @short, :status => :created, :location => @short }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT admin/shorts/1
  # PUT admin/shorts/1.xml
  def update
    @short = Short.find(params[:id])
    @short.user = @current_user
    @short.contracted = params[:short][:contracted].downcase
    @short.expanded = params[:short][:expanded]

    respond_to do |format|
      if @short.save
        format.html { redirect_to(admin_short_visits_path(@short), :notice => 'Short was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def permitted_params
    params.permit(short: [:expanded, :contracted])
  end
end
