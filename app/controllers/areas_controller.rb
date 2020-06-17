class AreasController < ApplicationController
  def index
  	@area = Area.new
  	@areas = Area.all
  end

  def create
  	@area = Area.new(area_params)
  	if @area.save
  	  redirect_to areas_path
  	else
  	  @areas = Area.all
  	  render 'index'
  	end
  end

  private
    def area_params
      params.require(:area).permit(:number)
    end
end
