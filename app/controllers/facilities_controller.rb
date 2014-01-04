class FacilitiesController < ApplicationController
  #before_action :set_facility, only: [:show, :edit, :update, :destroy]

  def index
  	@facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])   
  end

  def new
     @facility = Facility.new
  end
  
  def edit
    @facility = Facility.find(params[:id])
  end

  def create
    @facility = Facility.new(facility_params)
  	if @facility.save
      redirect_to @facility
    else
      render action: 'new'
    end
  end

  def update
  	@facility = Facility.find(params[:id])

  	if @facility.update(facility_params)   
  		redirect_to @facility
  	else
  		render 'edit'
  	end
  end

  def destroy
    
  	@facility = Facility.find(params[:id])
    @facility.destroy
  	redirect_to facilities_path
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
      @facility = Facility.new(params[:id])	
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_params
      params.require(:facility).permit(:facilityName, :facility_id, :dairy, :fish, :peanuts, :tree_Nuts, :eggs,  :wheat_gluten,  :soy, :crusta)
    end
end
