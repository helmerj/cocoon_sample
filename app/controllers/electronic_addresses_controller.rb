class ElectronicAddressesController < ApplicationController
  before_action :set_electronic_address, only: [:show, :edit, :update, :destroy]

  # GET /electronic_addresses
  # GET /electronic_addresses.json
  def index
    @electronic_addresses = ElectronicAddress.all
  end

  # GET /electronic_addresses/1
  # GET /electronic_addresses/1.json
  def show
  end

  # GET /electronic_addresses/new
  def new
    @electronic_address = ElectronicAddress.new
  end

  # GET /electronic_addresses/1/edit
  def edit
  end

  # POST /electronic_addresses
  # POST /electronic_addresses.json
  def create
    @electronic_address = ElectronicAddress.new(electronic_address_params)

    respond_to do |format|
      if @electronic_address.save
        format.html { redirect_to @electronic_address, notice: 'Electronic address was successfully created.' }
        format.json { render action: 'show', status: :created, location: @electronic_address }
      else
        format.html { render action: 'new' }
        format.json { render json: @electronic_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electronic_addresses/1
  # PATCH/PUT /electronic_addresses/1.json
  def update
    respond_to do |format|
      if @electronic_address.update(electronic_address_params)
        format.html { redirect_to @electronic_address, notice: 'Electronic address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @electronic_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electronic_addresses/1
  # DELETE /electronic_addresses/1.json
  def destroy
    @electronic_address.destroy
    respond_to do |format|
      format.html { redirect_to electronic_addresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electronic_address
      @electronic_address = ElectronicAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electronic_address_params
      params.require(:electronic_address).permit(:electronic_address_string, :contact_mechanism_id)
    end
end
