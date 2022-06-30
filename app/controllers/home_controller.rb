class HomeController < ApplicationController
  def index

  end

  def show
      @dpr_id = params[:id]
      @dpr_name = params[:name]
      @dpr = Dpr.find(params[:id])
      

  end

  def leaderboard
  end

  

  def dpr
    @dprs = Dpr.all
    @dprs = Dpr.where(params[:id])
  end

  def new
    @ro_dpr = RoDpr.new
  end
  
  def edit
  end

  def create
    print "halloooooooo"
  end

  def update
  end

  def destroy
  end


  def about
  end
end
