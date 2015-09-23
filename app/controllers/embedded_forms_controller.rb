class EmbeddedFormsController < ApplicationController
  def show
    @form = EmbeddedForm.find_by(id: params[:id])
    @page_title = "Event Registration"

    render_404 if @form.blank?
  end
end
