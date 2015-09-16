class StaticController < ApplicationController
  def show
    object = Short.find_by(contracted: params[:a])
    redirect_to short_path(object) and return if object.present?

    object = EmbeddedForm.find_by(url_slug: params[:a])
    redirect_to embedded_form_path(object) and return if object.present?

    respond_to do |format|
      format.html { render_404 }
    end
  end
end
