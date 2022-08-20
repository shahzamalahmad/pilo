class OperatorsController < ApplicationController
  def index
   @operators = Operator.all
    @i = 0
  end

  def show
    @operators = Operator.find(params[:id])
  end

  def new
    @operators = Operator.new
  end

  def create
    @operators = Operator.new(operator_params)

  

     if @operators.save
      flash.now[:notice] = 'Message sent!'
        redirect_to @operators
    else
      flash.now[:alert] = 'Error while sending message!'
      render :new, status: :unprocessable_entity
    end
  end

   def edit
    @operators = Operator.find(params[:id])
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
      params.require(:operator).permit(:sr_no, :location, :operator_name, :area, :plant_type)
    end


end
