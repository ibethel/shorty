class EmbeddedFormsController < ApplicationController
  def show
    @form = EmbeddedForm.find_by(id: params[:id])

    render_404 if @form.blank?
  end
end
