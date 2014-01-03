class FacilitiesController < ApplicationController
  def new
  	 @facilities = Facility.new
  end

  def index
  	@facilities = Facility.all
  end

  def create
  	@facility = Facility.new(params[:facility].permit(:facilityName, :dairy, :fish, :peanuts, :tree_Nuts, :eggs,  :wheat_gluten,  :soy, :crusta))
  end

  def show
    @facility = Facility.find(params[:id])  	
  end

  def edit
  	@facility = Facility.find(params[:id])
  end

  def update
  	@facility = Facility.find(params[:id])

  	if @facility.update(params[:facility].permit(:facilityName, :dairy, :fish, :peanuts, :tree_Nuts, :eggs,  :wheat_gluten,  :soy, :crusta))
  		redirect_to @facility
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@facility = facility.find(params[:id])
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
      params.require(:facility).permit(:facilityName, :dairy, :fish, :peanuts, :tree_Nuts, :eggs,  :wheat_gluten,  :soy, :crusta)
    end
end
