class Admin::EventsController < ApplicationController
  before_action :admin_user
  def index
  	@event = Event.new
  	@events = Event.all
  end

  def create
  	@event = Event.new(event_params)
    ActiveRecord::Base.transaction do
      @event.save!
      EventTag.create!(event_id: @event.id, tag_id: params[:event][:tag_ids])
    end
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
      if @event.update(event_params)
        # redirect_to edit_admin_event_path
      else
        # render edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @events = Event.all
    @event.destroy
  end

  private
    def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
      end
    end

    def event_params
      params.require(:event).permit(:name, :article,
      :image, :prefecture, :city, :street, :area_id, :open_time, :close_time, :is_valid, :pick_up)
    end
end

