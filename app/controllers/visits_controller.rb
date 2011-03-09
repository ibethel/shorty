class VisitsController < ApplicationController
  
  before_filter :require_authentication
  
  def index
    @short = Short.find(params[:short_id])
    @visits = @short.visits
    @uniques = @short.visits.count("referred", :distinct => true)
    @clicks_per_day = @short.visits.group("DATE(created_at)").order("created_at DESC").limit(30).count
    @referrers = @short.visits.group("referred").order("count_all DESC").limit(10).count

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @visits }
    end
  end
  
end
