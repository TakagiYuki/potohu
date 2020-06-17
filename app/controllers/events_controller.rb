class EventsController < ApplicationController
  def index
  	@event = Event.new
  	@events = Event.all
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  	  redirect_to events_path
  	else
  	  @events = Event.all
  	  render 'index'
  	end
  end

  private
    def event_params
      params.require(:event).permit(:name, :article,
      :image, :place, :city, :date, :is_parking, :is_valid, :area_id)
    end
end
