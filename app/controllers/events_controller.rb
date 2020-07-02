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
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.where(prefecture: @event.prefecture).limit(4)
    @event_comment = EventComment.new
    @event_comments = @event.event_comments
  end

  def search
    if params[:search][:prefecture].present?
      @events = Event.where('prefecture LIKE ?', "%#{params[:search][:prefecture]}%")
    else
      @events = Event.none
    end
  end
end
