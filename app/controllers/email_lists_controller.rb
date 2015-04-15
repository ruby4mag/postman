class EmailListsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :email_list_params
  before_action :set_email_list, only: [:show, :edit, :update, :destroy]

  # GET /email_lists
  # GET /email_lists.json
  def index
    if current_user.role.name == "Admin"
        @email_lists = EmailList.all
    else
        @email_lists = EmailList.where(user_id: current_user.id) 
    end
  end

  # GET /email_lists/1
  # GET /email_lists/1.json
  def show
  end

  # GET /email_lists/new
  def new
    @email_list = EmailList.new
  end

  # GET /email_lists/1/edit
  def edit
  end

  # POST /email_lists
  # POST /email_lists.json
  def create
    @email_list = EmailList.new(email_list_params.except(:datafile).merge(:user_id => current_user.id))

    respond_to do |format|
      if @email_list.save
        format.html { redirect_to @email_list, notice: 'Email list was successfully created.' }
        format.json { render :show, status: :created, location: @email_list }
      else
        format.html { render :new }
        format.json { render json: @email_list.errors, status: :unprocessable_entity }
      end
    end

   Emailid.import(email_list_params_no[:datafile], email_list_params[:name])
   #redirect_to :back, notice: "Exercises imported."

  end

  # PATCH/PUT /email_lists/1
  # PATCH/PUT /email_lists/1.json
  def update
    respond_to do |format|
      if @email_list.update(email_list_params)
        format.html { redirect_to @email_list, notice: 'Email list was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_list }
      else
        format.html { render :edit }
        format.json { render json: @email_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_lists/1
  # DELETE /email_lists/1.json
  def destroy
    @email_list.destroy
    respond_to do |format|
      format.html { redirect_to email_lists_url, notice: 'Email list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_list
      @email_list = EmailList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_list_params
      params.require(:email_list).permit(:name )
    end
    def email_list_params_no
      params.require(:email_list).permit(:datafile )
    end
end
