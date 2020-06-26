class HomesController < ApplicationController
  def top
	@areas = Area.all
	@events = Event.all
	@events_new = Event.all.order(created_at: :desc) # 新しい順の投稿一覧
	#.groupでFavorite内のevent_idを全取得 .orderで昇順 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
	@events_ranking = Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))
    area_id = 0
	  if params[:area_id]
	  	area_id = params[:area_id]
	  else
	  	# area_id1に属したイベントのいいね
	    area_id = 1
      end
	#.groupでFavorite内のevent_idを全取得 .orderで昇順 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
	@events_ranking_area = Event.where(area_id: area_id, id: Favorite.group(:event_id).order('count(event_id) desc').pluck(:event_id))

  end

  def show
	@event = Event.find(params[:id])
	@event_comment = EventComment.new
  end
end

