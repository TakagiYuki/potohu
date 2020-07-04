class Admin::EventsController < ApplicationController
  before_action :admin_user
  def index
  	@event = Event.new
  	@events = Event.all
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save!
  	  redirect_to admin_events_path
  	else
      @event = Event.new
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
        redirect_to edit_admin_event_path
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
    def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
      end
    end

    def event_params
      #params.require(:event).permit(:name, :article,
      #:image, :prefecture, :city, :street, :date, :time_status, :area_id, :is_valid, :start_time)
      params.require(:event).permit(:name, :article,
      :image, :prefecture, :city, :street, :date, :time_status, :area_id, :start_time)
    end
end

