class OperatorsController < ApplicationController
  def index
   @operators = Operator.all
   @areas = Area.all
   @locations = Location.all
    @i = 0
  end

  def show
    @operators = Operator.find(params[:id])
  end

  def new
    @operator = Operator.new
       @areas = Area.all
   @locations = Location.all
  end

  def create
   
    @operator = Operator.new(operator_params)

  
       # binding.pry
     if @operator.save
      flash.now[:notice] = 'Message sent!'
        redirect_to @operator
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
      @areas = Area.all
      @locations = Location.all
  end

   def edit
    @operator = Operator.find(params[:id])
    @areas = Area.all
    @locations = Location.all
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
      params.require(:operator).permit(:operator_name, :area_id, :location_id, :plant_type)
    end


end
