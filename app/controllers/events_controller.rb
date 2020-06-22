class EventsController < ApplicationController
  def index
    @areas = Area.all
    @events = Event.all
    #.groupでFavorite内のevent_idを全取得 .orderで昇順 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
    @events_ranking = Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))

    if params[:area_id]
      @area = Area.find(params[:area_id])
      @events = @area.events
    end

    #@events1 = Event.where(area_id: 1).find(Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))
    Event.where(area_id: 1, id: Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))
  end

  def show
    @event = Event.find(params[:id])
    @event_comment = EventComment.new
  end

  def search
    if params[:prefecture].present?
      @events = Event.where('prefecture LIKE ?', "%#{params[:prefecture]}%")
    else
      @events = Event.none
    end
  end
end
