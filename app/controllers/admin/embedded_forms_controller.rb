class Admin::EmbeddedFormsController < AdminController
  before_action :set_embedded_form, only: [:show, :edit, :update, :destroy]

  # GET admin/embedded_forms
  def index
    @embedded_forms = EmbeddedForm.all
  end

  # GET admin/embedded_forms/1
  def show
  end

  # GET admin/embedded_forms/new
  def new
    @embedded_form = EmbeddedForm.new
  end

  # GET admin/embedded_forms/1/edit
  def edit
  end

  # POST admin/embedded_forms
  def create
    @embedded_form = EmbeddedForm.new(embedded_form_params)

    if @embedded_form.save
      redirect_to admin_embedded_form_path(@embedded_form), notice: 'Embedded form was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT admin/embedded_forms/1
  def update
    if @embedded_form.update(embedded_form_params)
      redirect_to admin_embedded_form_path(@embedded_form), notice: 'Embedded form was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE admin/embedded_forms/1
  def destroy
    @embedded_form.destroy
    redirect_to admin_embedded_forms_url, notice: 'Embedded form was successfully destroyed.'
  end

  private

  def set_embedded_form
    @embedded_form = EmbeddedForm.find(params[:id])
  end

  def embedded_form_params
    params.require(:embedded_form).permit(:name, :url_slug, :service, :form_url)
  end
end
