class PoliceAreasController < ApplicationController
  before_action :set_police_area, only: [:show, :edit, :update, :destroy]

  # GET /police_areas
  # GET /police_areas.json
  def index
    @police_areas = PoliceArea.all
  end

  # GET /police_areas/1
  # GET /police_areas/1.json
  def show
  end

  # GET /police_areas/new
  def new
    @police_area = PoliceArea.new
  end

  # GET /police_areas/1/edit
  def edit
  end

  # POST /police_areas
  # POST /police_areas.json
  def create
    @police_area = PoliceArea.new(police_area_params)

    respond_to do |format|
      if @police_area.save
        format.html { redirect_to @police_area, notice: 'Police area was successfully created.' }
        format.json { render :show, status: :created, location: @police_area }
      else
        format.html { render :new }
        format.json { render json: @police_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /police_areas/1
  # PATCH/PUT /police_areas/1.json
  def update
    respond_to do |format|
      if @police_area.update(police_area_params)
        format.html { redirect_to @police_area, notice: 'Police area was successfully updated.' }
        format.json { render :show, status: :ok, location: @police_area }
      else
        format.html { render :edit }
        format.json { render json: @police_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police_areas/1
  # DELETE /police_areas/1.json
  def destroy
    @police_area.destroy
    respond_to do |format|
      format.html { redirect_to police_areas_url, notice: 'Police area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police_area
      @police_area = PoliceArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def police_area_params
      params.require(:police_area).permit(:area_name, :id_area)
    end
end
