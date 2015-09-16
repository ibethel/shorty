class Admin::VisitsController < AdminController
  def index
    @short = Short.find(params[:short_id])
    @visits = @short.visits
    @uniques = @short.visits.count("referred", :distinct => true)
    @clicks_per_day = @short.visits.group("DATE(created_at)").order("DATE(created_at) DESC").limit(30).count
    @referrers = @short.visits.group("referred").order("count_all DESC").limit(10).count
  end
end
