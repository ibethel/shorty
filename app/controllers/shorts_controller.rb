class ShortsController < ApplicationController
  def show
    @short = Short.find_by(id: params[:id])
    # @short = Short.where('lower(id) = ?', params[:id].downcase).first

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
