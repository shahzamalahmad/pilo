class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    # @locations = Location.create

    @areas = Area.all


  end
 
   def create
   # binding.pry
    @locations = Location.new(location_params)
    
     if @locations.save
       session[:location_id] = @locations.id
      flash.now[:notice] = 'Message sent!'
        redirect_to locations_path
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
  end

   def edit
    @locations = Location.find(params[:id])
  end

  def update
    @locations = Location.find(params[:id])

    if @locations.update(location_params)
      redirect_to location_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @locations = Location.find(params[:id])    
    @locations.destroy

    redirect_to location_path, status: :see_other
  end


  private
    def location_params
     params.require(:location).permit(:location_name, :area_id)
    end
end
