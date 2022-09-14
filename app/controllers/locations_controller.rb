class LocationsController < ApplicationController
  def index
    # @locations = Location.all
    @locations = current_user.locations.all
  end

  def new
    # @location = Location.new
    @location = current_user.locations.build

    @areas = current_user.areas.all


  end
 
   def create
   
    # @locations = Location.new(location_params)
    @location = current_user.locations.build(location_params)
    # binding.pry
     if @location.save
       session[:location_id] = @location.id
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
     params.require(:location).permit(:location_name, :area_id, :user_id)
    end
end
