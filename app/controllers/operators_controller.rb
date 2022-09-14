class OperatorsController < ApplicationController
  def index
   # @operators = Operator.all
   @operators = current_user.operators.all
   @areas = current_user.areas.all
   @locations = current_user.locations.all
    @i = 0
  end

  def show
    @operators = current_user.operators.find(params[:id])
  end

  def new
    # @operator = Operator.new
    @operator = current_user.operators.build
   #     @areas = Area.all
   # @locations = Location.all
   @areas = current_user.areas.all
   @locations = current_user.locations.all
  end

  def create
   # binding.pry
    # @operator = Operator.new(operator_params)
    @operator = current_user.operators.build(operator_params)
  
       
     if @operator.save
      flash.now[:notice] = 'Message sent!'
        redirect_to @operator
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
      # @areas = Area.all
      # @locations = Location.all
   #    @areas = current_user.areas.all
   # @locations = current_user.locations.all
  end

   def edit
    @operator = Operator.find(params[:id])
    # @areas = Area.all
    # @locations = Location.all
   #  @areas = current_user.areas.all
   # @locations = current_user.locations.all
  end

  def update
    @operators = Operator.find(params[:id])

    if @operators.update(operator_params)
      redirect_to @operators
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @operators = Operator.find(params[:id])    
    @operators.destroy

    redirect_to operators_path, status: :see_other
  end


  private
    def operator_params
      params.require(:operator).permit(:operator_name, :area_id, :location_id, :plant_type, :user_id)
    end


end
