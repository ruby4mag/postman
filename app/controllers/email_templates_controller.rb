class EmailTemplatesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource  param_method: :email_template_params
  before_action :set_email_template, only: [:show, :edit, :update, :destroy, :download]
  before_action :set_emailid, only: [:download]
  # GET /email_templates
  # GET /email_templates.json
  def index
    #@email_templates = EmailTemplate.all
    if current_user.role.name == "Admin"
	@email_templates = EmailTemplate.all
    else
	@email_templates = EmailTemplate.all.where(user_id: current_user.id)
    end
  end

  # GET /email_templates/1
  # GET /email_templates/1.json
  def show
  end

  # GET /email_templates/new
  def new
    @email_template = EmailTemplate.new
  end

  # GET /email_templates/1/edit
  def edit
  end

  # POST /email_templates
  # POST /email_templates.json
  def create
    @email_template = EmailTemplate.new(email_template_params.merge(:user_id => current_user.id))

    respond_to do |format|
      if @email_template.save
        format.html { redirect_to @email_template, notice: 'Email template was successfully created.' }
        format.json { render :show, status: :created, location: @email_template }
      else
        format.html { render :new }
        format.json { render json: @email_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_templates/1
  # PATCH/PUT /email_templates/1.json
  def update
    respond_to do |format|
      if @email_template.update(email_template_params)
        format.html { redirect_to @email_template, notice: 'Email template was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_template }
      else
        format.html { render :edit }
        format.json { render json: @email_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_templates/1
  # DELETE /email_templates/1.json
  def destroy
    @email_template.destroy
    respond_to do |format|
      format.html { redirect_to email_templates_url, notice: 'Email template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_template
      @email_template = EmailTemplate.find(params[:id])
    end
    def set_emailid
      @email_id = Emailid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_template_params
      params.require(:email_template).permit(:name, :content , :mailfrom , :mailsubject)
    end
end
