class RoDprsController < ApplicationController

	def index
    @page = params[:page] || 1
    pageCount = 11
    offset = ((@page.to_i) - 1) * pageCount
		@ro_dpr =  RoDpr.all.limit(pageCount).offset(offset)
		    @i = 0
        # @pagearray = [1,2,3,4,5,6]
        @k = 0
        
		 
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
  	


   @ro_dpr = RoDpr.new(ro_dpr_params)

  

   if @ro_dpr.save
    flash.now[:notice] = 'Message sent!'
      redirect_to @ro_dpr
    else
      flash.now[:alert] = 'Error while sending message!'
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
  	@ro_dpr = RoDpr.find(params[:id])    
    @ro_dpr.destroy

    redirect_to ro_dprs_path, status: :see_other

  end


  def about
  end

 private
    def ro_dpr_params
      params.require(:ro_dpr).permit(:sr_no, :location, :operator_name, :tshirt, :icard, :mask, :shoes, :hygiene, :live_location, :behaviour, :punctuality, :photos, :machine_videos, :feedback, :inspaction, :backlight, :wrapping, :tv, :glass, :nozzle, :cip_backwash, :cleaning, :camera, :tds, :flow, :total_marks, :ph, :temp, :dpr_id)
    end
    # validate :operator_name_existing

   
    # def operator_name_existing
    #   errors.add(:operator_name_id, :missing) if operator_name.blank?
    # end
    
end
