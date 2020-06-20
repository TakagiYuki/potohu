class EventsController < ApplicationController
  def index
    @events = Event.all
    @events_ranking = Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(3).pluck(:event_id))
  end

  def show
    @event = Event.find(params[:id])
    @event_comment = EventComment.new
  end

end
