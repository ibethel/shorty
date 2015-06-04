class ShortsController < ApplicationController
  def show
    redirect_short
  end

  private

  def redirect_short
    @short = Short.find_by_contracted(params[:a])

    respond_to do |format|
      if @short.blank?
        format.html { render_404 }
      else
        @short.record_visit(request.env["HTTP_REFERER"], request.env["REMOTE_ADDR"]) unless @short.blank?
        format.html { redirect_to(@short.expanded) }
      end
    end
  end
end
