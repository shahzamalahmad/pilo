class AreasController < ApplicationController
def index
    @areas = Area.all
  end
  
  def new
    @areas = current_user.areas.build
  end

   def create

    @areas = Area.create(areas_params)

  

     if @areas.save
      flash.now[:notice] = 'Message sent!'
        redirect_to areas_path
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
  end

   def edit
    @areas = Area.find(params[:id])
  end

  def update

    @areas = Area.find(params[:id])

    if @areas.update(areas_params)
      redirect_to areas_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    Area.find(params[:id]).destroy
    # @areas = Area.find(params[:id])    
    # @areas.destroy

    redirect_to areas_path, status: :see_other
  end


  private
    def areas_params
     params.require(:area).permit(:area_name)
    end
end
