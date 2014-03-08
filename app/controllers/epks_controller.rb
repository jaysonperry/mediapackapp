class EpksController < ApplicationController
  before_action :set_epk, only: [:show, :edit, :update, :destroy]

  # GET /epks
  # GET /epks.json
  def index
    @epks = Epk.all
  end

  # GET /epks/1
  # GET /epks/1.json
  def show
  end

  # GET /epks/new
  def new
    @epk = Epk.new
  end

  # GET /epks/1/edit
  def edit
  end

  # POST /epks
  # POST /epks.json
  def create
    @epk = Epk.new(epk_params)

    respond_to do |format|
      if @epk.save
        format.html { redirect_to @epk, notice: 'Epk was successfully created.' }
        format.json { render action: 'show', status: :created, location: @epk }
      else
        format.html { render action: 'new' }
        format.json { render json: @epk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epks/1
  # PATCH/PUT /epks/1.json
  def update
    respond_to do |format|
      if @epk.update(epk_params)
        format.html { redirect_to @epk, notice: 'Epk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @epk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epks/1
  # DELETE /epks/1.json
  def destroy
    @epk.destroy
    respond_to do |format|
      format.html { redirect_to epks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epk
      @epk = Epk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def epk_params
      params.require(:epk).permit(:name, :user_id)
    end
end
