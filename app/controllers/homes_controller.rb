class HomesController < ApplicationController
  def top
	@areas = Area.all
	@events = Event.enabled
	@events_new = Event.enabled.order(created_at: :desc).limit(4) # 新しい順の投稿一覧
	#.groupでFavorite内のevent_idを全取得 .orderで昇順 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
	@events_ranking = Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))
    area_id = 0
	  if params[:area_id]
	  	area_id = params[:area_id]
	  else
	  	# area_id1に属したイベントのいいね
	    area_id = 1
      end
	@events_ranking_area = Event.where(area_id: area_id, id: Favorite.group(:event_id).order('count(event_id) desc').limit(4).pluck(:event_id))
  end

  def show
	@event = Event.find(params[:id])
	@event_comment = EventComment.new
  end

  def tag
    # @events = []
    @tag = Tag.find(params[:id])
    # event_tags = EventTag.where(tag_id: params[:id]).includes(:event)
    # event_tags.each do |event_tag|
    # 	@events << event_tag.event
    # end
    @events = Event.joins(:tags).where(tag_id: 1)
  end
end

# if params[:area_id]
 # @events_ranking_area1 = Event.where(area_id: params[:area_id], id: Favorite.group(:event_id).order('count(event_id) desc').pluck(:event_id))
