class HomesController < ApplicationController
  def top
    @tags = Tag.all
  	@events = Event.enabled
  	@events_new = Event.enabled.order(created_at: :desc).page(params[:page]).per(8) # 新しい順の投稿一覧
    area_id = 1
  	@events_ranking_area = Event.joins(:favorites).group("favorites.event_id").where(area_id: 1).order('count(event_id) desc').limit(4)
    @events_pickup = Event.pickup.limit(4)
    @events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end

  def show
	  @event = Event.find(params[:id])
	  @event_comment = EventComment.new
  end

  def ranking
    @events_new = Event.enabled.order(created_at: :desc).page(params[:page]).per(4) # 新しい順の投稿一覧
    area_id = 0
	  if params[:area_id]
	  	area_id = params[:area_id]
	  else
	    area_id = 1
    end
    @events_ranking_area = Event.joins(:favorites).group("favorites.event_id").where(area_id: area_id).order('count(event_id) desc').limit(4)
  end
end
