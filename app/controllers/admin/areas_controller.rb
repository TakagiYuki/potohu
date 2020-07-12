class Admin::AreasController < ApplicationController
  before_action :admin_user
  def index
  	@area = Area.new
  	@areas = Area.all
  end

  def create
  	@area = Area.new(area_params)
  	if @area.save!
      @areas = Area.all
  	else
  	  
  	end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
      if @area.update(area_params)
      else
        render edit
    end
  end

  def destroy
    @area = Area.find(params[:id])
    @areas = Area.all
    @area.destroy
  end

  private
    def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
      end
    end

    def area_params
      params.require(:area).permit(:name)
    end
end

