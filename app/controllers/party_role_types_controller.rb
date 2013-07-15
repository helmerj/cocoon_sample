class PartyRoleTypesController < ApplicationController
  before_action :set_party_role_type, only: [:show, :edit, :update, :destroy]

  # GET /party_role_types
  # GET /party_role_types.json
  def index
    @party_role_types = PartyRoleType.all
  end

  # GET /party_role_types/1
  # GET /party_role_types/1.json
  def show
  end

  # GET /party_role_types/new
  def new
    @party_role_type = PartyRoleType.new
  end

  # GET /party_role_types/1/edit
  def edit
  end

  # POST /party_role_types
  # POST /party_role_types.json
  def create
    @party_role_type = PartyRoleType.new(party_role_type_params)

    respond_to do |format|
      if @party_role_type.save
        format.html { redirect_to @party_role_type, notice: 'Party role type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @party_role_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @party_role_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_role_types/1
  # PATCH/PUT /party_role_types/1.json
  def update
    respond_to do |format|
      if @party_role_type.update(party_role_type_params)
        format.html { redirect_to @party_role_type, notice: 'Party role type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @party_role_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_role_types/1
  # DELETE /party_role_types/1.json
  def destroy
    @party_role_type.destroy
    respond_to do |format|
      format.html { redirect_to party_role_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_role_type
      @party_role_type = PartyRoleType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_role_type_params
      params.require(:party_role_type).permit(:name)
    end
end
