class RoDprsController < ApplicationController

	def index
    
    @date = params[:date] || Date.today.to_s 
    
    @ro_dpr =  RoDpr.where(date: @date) 
    # @page = params[:page] || 1
    # @cd = RoDpr.group(:date).count

    # @cd1 = @cd.keys
    # @cd3 = @cd1[0]
    # pageCount = 15
    # offset = ((@page.to_i) - 1) * pageCount
    # @ro_dpr =  RoDpr.where(date: Date.today.to_s).order(:date).limit(pageCount).offset(offset)
     @operators = Operator.all
     @areas = Area.all
     @locations = Location.all
 
    
		    @i = 0
      
    
	end
  

  def show
       @ro_dpr = RoDpr.find(params[:id])
        @operators = Operator.all
     @areas = Area.all
     @locations = Location.all
 

  end

  

  def dpr
    @dprs = Dpr.all
    @dprs = Dpr.where(params[:id])
  end

  def new

    @ro_dpr = RoDpr.new
    @operators = Operator.all
    @areas = Area.all
    @locations = Location.all
    @k = 1

  end
  
  

  def create
    # binding.pry
   @ro_dpr = RoDpr.new(ro_dpr_params)

  

   if @ro_dpr.save
    flash.now[:notice] = 'Message sent!'
      redirect_to @ro_dpr
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
    @operators = Operator.all
    @areas = Area.all
    @locations = Location.all


  end

 def edit
    @ro_dpr = RoDpr.find(params[:id])
     @operators = Operator.all
   @areas = Area.all
   @locations = Location.all
    
  end


  def update
        @ro_dpr = RoDpr.find(params[:id])


    if @ro_dpr.update(ro_dpr_params)
      redirect_to @ro_dpr
    else
      render :edit, status: :unprocessable_entity
    end
    
  end

  def destroy
  	@ro_dpr = RoDpr.find(params[:id])    
    @ro_dpr.destroy

    redirect_to ro_dprs_path(@ro_dpr), status: :see_other

  end


  def about

  end

 private
    def ro_dpr_params
      params.require(:ro_dpr).permit(:sr_no, :area_id, :location_id, :operator_id, :tshirt, :icard, :mask, :shoes, :hygiene, :live_location, :behaviour, :punctuality, :photos, :machine_videos, :feedback, :inspaction, :backlight, :wrapping, :tv, :glass, :nozzle, :cip_backwash, :cleaning, :camera, :tds, :flow, :total_marks, :ph, :temp, :date, :dpr_id)
    end
    
end
