class EventsController < ApplicationController
  def index
    @events = Event.all
    #.groupでFavorite内のevent_idを全取得 .orderで昇順 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
    @events_ranking = Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(3).pluck(:event_id))

    #.groupでFavorite内のevent_idのイベントを全取得　=> erea_id[1]に属したイベントを全取得 =>.order.pluck
  end

  def show
    @event = Event.find(params[:id])
    @event_comment = EventComment.new
  end

end
