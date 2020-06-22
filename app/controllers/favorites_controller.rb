class FavoritesController < ApplicationController
  before_action :set_event

  def create
    event = Event.find(params[:event_id])
    favorite = Favorite.new()
    favorite.user_id = current_user.id
    favorite.event_id = event.id
    favorite.save
    # redirect_to events_path
  end

  def destroy
    event = Event.find(params[:event_id])
    favorite = current_user.favorites.find_by(event_id: event.id)
    favorite.destroy
    # redirect_to events_path
  end

  def set_event
   @event = Event.find(params[:event_id])
 end
end