class LocationController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @locations = Location.new
    @areas = Area.all
  end

   def create

    @locations = Location.create(location_params)
    
  

     if @locations.save
      flash.now[:notice] = 'Message sent!'
        redirect_to location_path
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
      @areas = Area.all

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
     params.require(:location).permit(:location_name, :areaname)
    end
end
