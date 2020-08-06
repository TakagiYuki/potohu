class Admin::SeasonsController < ApplicationController
  def index
  	@season = Season.new
  	@seasons = Season.all
  end
  
  def create
  	@season = Season.new(season_params)
  	  if @season.save
        flash[:success] = "登録完了"
        redirect_to admin_seasons_path
  	  else
        @seasons = Season.all
        render 'index'
  	  end
  end

  def edit
  	@season = Season.find(params[:id])
  end
  
  def update
    @season = Season.find(params[:id])
      if @season.update(season_params)
        redirect_to admin_seasons_path
      else
        render 'edit'
    end
  end
  
  def destroy
    season = Season.find(params[:id])
    season.destroy
    redirect_to admin_seasons_path
  end
  
  private
	def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
	  end
	end

	def season_params
      params.require(:season).permit(:name)
    end
end

