class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @tags = Tag.all
    @events = @tag.events
    # groupでFavorite内のevent_idを全取得 order昇順 pluckカラムの情報取得
	@events_ranking_area =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end
end
