class Admin::ShortsController < AdminController
  # GET admin/shorts
  # GET admin/shorts.xml
  def index
    session[:include_bethel_tv] = false if session[:include_bethel_tv] == nil
    session[:include_podcast] = false if session[:include_podcast] == nil

    if params[:toggle_podcast]
      session[:include_podcast] == true ? session[:include_podcast] = false : session[:include_podcast] = true
    end

    if params[:toggle_tv]
      session[:include_bethel_tv] == true ? session[:include_bethel_tv] = false : session[:include_bethel_tv] = true
    end

    #
    # Including both podcast and Bethel.TV links
    #
    if session[:include_bethel_tv] && session[:include_podcast]
      @shorts = Short.page(params[:page])
      @including_bethel_tv = true
      @including_podcast = true
      @shorts_count = Short.count(:all)
      @view_count = Visit.count(:all)
    #
    # Including Bethel.TV links but hiding podcast links
    #
    elsif session[:include_bethel_tv]
      @shorts = Short.exclude_podcasts.page(params[:page])
      @shorts_count = Short.exclude_podcasts.count
      @view_count = Visit.joins(:short).where("expanded NOT LIKE '%podcast%'").count()
      @including_bethel_tv = true
      @including_podcast = false
    #
    # Including podcast links but hiding bethel.TV links
    #
    elsif session[:include_podcast]
      @shorts = Short.exclude_bethel_tv.page(params[:page])
      @view_count = Visit.joins(:short).where("expanded NOT LIKE '%bethel.tv%'").count()
      @shorts_count = Short.exclude_bethel_tv.count
      @including_bethel_tv = false
      @including_podcast = true
    #
    # Excluding podcast links and bethel.TV links
    #
    else
      @shorts = Short.exclude_bethel_tv.exclude_podcasts.page(params[:page])
      @view_count = Visit.joins(:short).where("expanded NOT LIKE '%bethel.tv%' AND expanded NOT LIKE '%podcast%'").count()
      @shorts_count = Short.exclude_bethel_tv.exclude_podcasts.count
      @including_bethel_tv = false
      @including_bethel_tv = false
      @including_podcast = false
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
