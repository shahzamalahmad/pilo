class RoDprsController < ApplicationController

	def index
		@ro_dpr =  RoDpr.all
		
		 
     # @dpr = Dpr.find(9)
		  # end
		  @i = 0
	end


  def show
      @ro_dpr = RoDpr.all
       @ro_dpr = RoDpr.find(params[:id])

  end

  

  def dpr
    @dprs = Dpr.all
    @dprs = Dpr.where(params[:id])
  end

  def new
    @ro_dpr = RoDpr.new
  end
  
  

  def create
  	 # @dpr = Dpr.find(9)


   @ro_dpr = RoDpr.new(ro_dpr)
   if @ro_dpr.save
      redirect_to @ro_dpr
    else
      render :new, status: :unprocessable_entity
    end

  end

 def edit
    @ro_dpr = RoDpr.find(params[:id])

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
  	# @ro_dpr.destroy_params[:id]

  	@ro_dpr = RoDpr.find(params[:id])    
    @ro_dpr.destroy

    redirect_to root_path, status: :see_other
    
  end


  def about
  end

 private
    def ro_dpr_params
      params.require(:ro_dpr).permit(:sr_no, :location, :operator_name, :tshirt, :icard, :mask, :shoes, :hygiene, :live_location, :behaviour, :punctuality, :photos, :machine_videos, :feedback, :inspaction, :backlight, :wrapping, :tv, :glass, :nozzle, :cip_backwash, :cleaning, :camera, :tds, :flow, :total_marks, :ph, :temp, :dpr_id)
    end
    
end
