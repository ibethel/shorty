class ShortsController < ApplicationController
  
  before_filter :require_authentication, :except => [:show, :render_short]
  # GET /shorts
  # GET /shorts.xml
  def index
    @shorts = Short.all
    @view_count = Visit.count(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shorts }
    end
  end

  # GET /shorts/1
  # GET /shorts/1.xml
  def show
    if params[:a].split("").last == "+"
      @short = Short.find_by_contracted(params[:a].chop)
      redirect_to short_visits_path(@short)
    else
      redirect_short
    end
  end

  # GET /shorts/new
  # GET /shorts/new.xml
  def new
    @short = Short.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @short }
    end
  end

  # GET /shorts/1/edit
  def edit
    @short = Short.find(params[:id])
  end

  # POST /shorts
  # POST /shorts.xml
  def create
    @short = Short.new(params[:short])

    respond_to do |format|
      if @short.save
        format.html { redirect_to(shorts_path, :notice => 'Short was successfully created.') }
        format.xml  { render :xml => @short, :status => :created, :location => @short }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @short.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shorts/1
  # PUT /shorts/1.xml
  def update
    @short = Short.find(params[:id])

    respond_to do |format|
      if @short.update_attributes(params[:short])
        format.html { redirect_to(shorts_path, :notice => 'Short was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @short.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
  private
  
    def redirect_short
      @short = Short.find_by_contracted(params[:a])
      @short.record_visit(request.env["HTTP_REFERER"])
      respond_to do |format|
        format.html { redirect_to(@short.expanded) }
      end
    end
end
