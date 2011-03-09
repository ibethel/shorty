class VisitsController < ApplicationController
  
  def index
    @short = Short.find(params[:short_id])
    @visits = @short.visits
    @uniques = @short.visits.count("referred", :distinct => true)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @visits }
    end
  end
  
end
