class Admin::EventsController < ApplicationController

  def index
  	@event = Event.new
  	@events = Event.all

  end

  def create
  	@event = Event.new(event_params)
    #[:event]の中の[:tag_name]
    # tag_list = params[:event][:tag_name].split(",")
  	if @event.save
      # @event.save_events(tag_list)#event.erb参照
  	  redirect_to admin_events_path
  	else
  	  @events = Event.all
  	  render 'index'
  	end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
      if @event.update(event_params)
        redirect_to admin_event_path
      else
        render edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to admin_events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :article,
      :image, :prefecture, :city, :street, :date, :time_status, :area_id)
    end
end

