class FactSheetsController < ApplicationController
  before_action :set_fact_sheet, only: [:show, :edit, :update, :destroy]

  # GET /fact_sheets
  # GET /fact_sheets.json
  def index
    @fact_sheets = FactSheet.all
  end

  # GET /fact_sheets/1
  # GET /fact_sheets/1.json
  def show
  end

  # GET /fact_sheets/new
  def new
    @fact_sheet = FactSheet.new
  end

  # GET /fact_sheets/1/edit
  def edit
  end

  # POST /fact_sheets
  # POST /fact_sheets.json
  def create
    @fact_sheet = FactSheet.new(fact_sheet_params)

    respond_to do |format|
      if @fact_sheet.save
        format.html { redirect_to @fact_sheet, notice: 'Fact sheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fact_sheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @fact_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fact_sheets/1
  # PATCH/PUT /fact_sheets/1.json
  def update
    respond_to do |format|
      if @fact_sheet.update(fact_sheet_params)
        format.html { redirect_to @fact_sheet, notice: 'Fact sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fact_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fact_sheets/1
  # DELETE /fact_sheets/1.json
  def destroy
    @fact_sheet.destroy
    respond_to do |format|
      format.html { redirect_to fact_sheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_sheet
      @fact_sheet = FactSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fact_sheet_params
      params.require(:fact_sheet).permit(:vanity_url, :country, :first_name, :last_name, :middle_initial, :p_k_a, :professional_business_type, :client_tel_mobile, :client_tel_work, :client_tel_alt, :client_email_alt, :client_url, :client_street_address_1, :client_street_address_2, :client_unit_number, :client_city, :client_county, :client_state, :client_postal_code, :company_name, :company_tel_main, :company_url, :company_email, :company_street_address_1, :company_street_address_2, :company_suite_number, :company_city, :company_county, :company_state, :company_postal_code)
    end
end
