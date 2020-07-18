class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @events = @season.events
  end
end
