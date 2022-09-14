class StpDprsController < ApplicationController
def index
	@date = params[:date] || Date.today.to_s 
    
    @stp_dpr =  current_user.stp_dprs.where(date: @date)
  # @page = params[:page] || 1
  #   pageCount = 11
  #   offset = ((@page.to_i) - 1) * pageCount
  #   @stp_dpr =  StpDpr.all.limit(pageCount).offset(offset)
        @i = 0
     @operators = Operator.all
     @areas = Area.all
     @locations = Location.all
end


  def show
      # @stp_dpr = StpDpr.all
      @stp_dpr = StpDpr.find(params[:id])

      @operators = Operator.all
      @areas = Area.all
      @locations = Location.all

  end 

  def dpr
    @dprs = Dpr.all
    @dprs = Dpr.where(params[:id])
  end


def new
    @stp_dpr = current_user.stp_dprs.build
    @operators = current_user.operators.all
    @areas = current_user.areas.all
    @locations = current_user.locations.all
  end

  def create

   @stp_dpr = current_user.stp_dprs.build(stp_dpr_params)
   if @stp_dpr.save
      redirect_to @stp_dpr
    else
      flash.now[:alert] = 'Error while sending message!'

      render :new, status: :unprocessable_entity
    end
    @operators = current_user.operators.all
    @areas = current_user.areas.all
    @locations = current_user.locations.all

  end

  def edit
    @stp_dpr = StpDpr.find(params[:id])
    @operators = current_user.operators.all
    @areas = current_user.areas.all
    @locations = current_user.locations.all

  end


  def update
        @stp_dpr = StpDpr.find(params[:id])


    if @stp_dpr.update(stp_dpr_params)
      redirect_to @stp_dpr
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
  	# @stp_dpr.destroy_params[:id]

  	@stp_dpr = StpDpr.find(params[:id])    
    @stp_dpr.destroy

    redirect_to stp_dprs_path, status: :see_other
    
  end


  def about
  end

 private
    def stp_dpr_params
      params.require(:stp_dpr).permit(:sr_no, :area_id, :location_id, :operator_id, :uniform, :mask, :photos, :videos, :live_location, :behaviour, :punctuality, :pcl_display_picture, :daily_report, :r_and_m, :backwash, :blower_oil, :compressor_oil, :total_marks, :outer_area_maintainance, :date, :dpr_id, :user_id)
    end


end
