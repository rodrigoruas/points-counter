class MotelsController < ApplicationController
  def index
    @motels = Motel.all
    @motel = Motel.new
  end

  def new

  end

  def create
    @motel = Motel.new(motel_params)
    if @motel.save
      redirect_to motels_path
    else
       render :new
    end
  end

  private

  def motel_params
     params.require(:motel).permit(:name)
  end

end
