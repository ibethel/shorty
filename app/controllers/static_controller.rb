class StaticController < ApplicationController
  def show
    # first check for exact match - this is for older links
    object = Short.find_by(contracted: params[:a])
    redirect_to short_path(object) and return if object.present?

    # check for downcase codes since all new links will be automatically downcased
    object = Short.find_by(contracted: params[:a].downcase)
    redirect_to short_path(object) and return if object.present?

    # check for embedded form now
    object = EmbeddedForm.find_by(url_slug: params[:a])
    redirect_to embedded_form_path(object) and return if object.present?

    respond_to do |format|
      format.html { render_404 }
    end
  end
end
