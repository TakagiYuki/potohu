class Admin::AreasController < ApplicationController
  before_action :admin_user
  def index
  	@area = Area.new
  	@areas = Area.all
  end

  def create
  	@area = Area.new(area_params)
  	if @area.save
      @areas = Area.all
      flash[:success] = "登録完了"
      redirect_to admin_areas_path
  	else
      @areas = Area.all
      flash.now[:alert] = 'エラー'
      render 'index'
  	end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
    if @area.update(area_params)
      flash[:success] = "変更完了"
      redirect_to admin_areas_path
    else
      flash.now[:alert] = 'エラー'
      render 'edit'
    end
  end

  def destroy
    @area = Area.find(params[:id])
    @area.destroy
    flash[:success] = "消去完了"
    redirect_to admin_areas_path
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

