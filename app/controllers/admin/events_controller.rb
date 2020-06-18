class Admin::EventsController < ApplicationController

  def index
  	@event = Event.new
  	@events = Event.all

  end

  def create
  	@event = Event.new(event_params)
    #[:event]の中の[:tag_name]
    tag_list = params[:event][:tag_name].split(",")
  	if @event.save
      @event.save_events(tag_list)#event.erb参照
  	  redirect_to admin_events_path
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

