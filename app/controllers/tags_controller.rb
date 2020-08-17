class TagsController < ApplicationController
  def show
  	@events_pickup = Event.pickup.limit(5)
    @tag = Tag.find(params[:id])
    @tags = Tag.all
    @events = @tag.events
	@events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end
end
