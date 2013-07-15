class ContactMechanismsController < ApplicationController
  before_action :set_contact_mechanism, only: [:show, :edit, :update, :destroy]

  # GET /contact_mechanisms
  # GET /contact_mechanisms.json
  def index
    @contact_mechanisms = ContactMechanism.all
  end

  # GET /contact_mechanisms/1
  # GET /contact_mechanisms/1.json
  def show
  end

  # GET /contact_mechanisms/new
  def new
    @contact_mechanism = ContactMechanism.new
  end

  # GET /contact_mechanisms/1/edit
  def edit
  end

  # POST /contact_mechanisms
  # POST /contact_mechanisms.json
  def create
    @contact_mechanism = ContactMechanism.new(contact_mechanism_params)

    respond_to do |format|
      if @contact_mechanism.save
        format.html { redirect_to @contact_mechanism, notice: 'Contact mechanism was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact_mechanism }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_mechanisms/1
  # PATCH/PUT /contact_mechanisms/1.json
  def update
    respond_to do |format|
      if @contact_mechanism.update(contact_mechanism_params)
        format.html { redirect_to @contact_mechanism, notice: 'Contact mechanism was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contact_mechanism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_mechanisms/1
  # DELETE /contact_mechanisms/1.json
  def destroy
    @contact_mechanism.destroy
    respond_to do |format|
      format.html { redirect_to contact_mechanisms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_mechanism
      @contact_mechanism = ContactMechanism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_mechanism_params
      params.require(:contact_mechanism).permit(:contact_mechanism_type_id,
                                                electronic_addresses_attributes: [:id, :_destroy, :electronic_address_string ]
                                                )
    end
end
