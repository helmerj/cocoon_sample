class ContactMechanismTypesController < ApplicationController
  before_action :set_contact_mechanism_type, only: [:show, :edit, :update, :destroy]

  # GET /contact_mechanism_types
  # GET /contact_mechanism_types.json
  def index
    @contact_mechanism_types = ContactMechanismType.all
  end

  # GET /contact_mechanism_types/1
  # GET /contact_mechanism_types/1.json
  def show
  end

  # GET /contact_mechanism_types/new
  def new
    @contact_mechanism_type = ContactMechanismType.new
  end

  # GET /contact_mechanism_types/1/edit
  def edit
  end

  # POST /contact_mechanism_types
  # POST /contact_mechanism_types.json
  def create
    @contact_mechanism_type = ContactMechanismType.new(contact_mechanism_type_params)

    respond_to do |format|
      if @contact_mechanism_type.save
        format.html { redirect_to @contact_mechanism_type, notice: 'Contact mechanism type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact_mechanism_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact_mechanism_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_mechanism_types/1
  # PATCH/PUT /contact_mechanism_types/1.json
  def update
    respond_to do |format|
      if @contact_mechanism_type.update(contact_mechanism_type_params)
        format.html { redirect_to @contact_mechanism_type, notice: 'Contact mechanism type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact_mechanism_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_mechanism_types/1
  # DELETE /contact_mechanism_types/1.json
  def destroy
    @contact_mechanism_type.destroy
    respond_to do |format|
      format.html { redirect_to contact_mechanism_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_mechanism_type
      @contact_mechanism_type = ContactMechanismType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_mechanism_type_params
      params.require(:contact_mechanism_type).permit(:name)
    end
end
