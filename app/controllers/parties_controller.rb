class PartiesController < ApplicationController
  before_action :set_party, only: [:show, :edit, :update, :destroy]

  # GET /parties
  # GET /parties.json
  def index
    @parties = Party.all
  end

  # GET /parties/1
  # GET /parties/1.json
  def show
  end

  # GET /parties/new
  def new
    @party = Party.new
  end

  # GET /parties/1/edit
  def edit
  end

  # POST /parties
  # POST /parties.json
  def create
    @party = Party.new(party_params)

    respond_to do |format|
      if @party.save
        format.html { redirect_to @party, notice: 'Party was successfully created.' }
        format.json { render action: 'show', status: :created, location: @party }
      else
        format.html { render action: 'new' }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parties/1
  # PATCH/PUT /parties/1.json
  def update
    respond_to do |format|
      if @party.update(party_params)
        format.html { redirect_to @party, notice: 'Party was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parties/1
  # DELETE /parties/1.json
  def destroy
    @party.destroy
    respond_to do |format|
      format.html { redirect_to parties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party
      @party = Party.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_params
      params.require(:party).permit(party_contact_mechanisms_attributes: [
                                                      :party_id,
                                                      :contact_mechanism_id,
                                                      :thru_date,
                                                      :from_date,
                                                      :party_contact_mechanism_seq_id,
                                                      :non_solicitation_ind,
                                                      :extension,
                                                      :comment,
                                                      :party_role_type_id,
                                                      contact_mechanism_attributes: [:id, :_destroy, :contact_mechanism_type_id,
                                                      electronic_address_attributes: [ :id, :_destroy, :electronic_address_string, :contact_mechanism_id],
                                                      telecommunications_number_attributes: [ :id, :_destroy, :country_code, :area_code, :contact_number, :contact_mechanism_id],
                                                      postal_address_attributes: [ :id, :_destroy, :address1, :address2, :address3, :contact_mechanism_id ]
                                                      ]
                                                      ])
    end
end