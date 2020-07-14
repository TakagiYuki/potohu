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
    # @events = Event.joins(:tags).where(tags.name: "自然")
    # @events = Event.joins(:tags).where('tags.name LIKE ?', "%#{params[:search][:name]}%")
    
    # モデルクラス.where( "列名 LIKE ? AND 列名 LIKE ? ", "条件1", "条件2")
    #byebug
    # {"utf8"=>"✓", "search"=>{"prefecture"=>"北海道", "name"=>""}, "commit"=>"search"}
    # {"utf8"=>"✓", "search"=>{"name"=>""}, "commit"=>"search"}
    if params[:search][:prefecture].present? && params[:search][:name].empty?
      @events = Event.where('prefecture LIKE ?', "%#{params[:search][:prefecture]}%")
    elsif params[:search][:prefecture].blank? && params[:search][:name].present?
      @events = Event.joins(:tags).where('tags.name LIKE ?', "%#{params[:search][:name]}%")
    else
      @events = Event.joins(:tags).where('events.prefecture LIKE ? AND tags.name LIKE ?', "%#{params[:search][:prefecture]}%","%#{params[:search][:name]}%")
    end
  end
end

    # elsif params[:search][:name].present?
    #   @tags = Tag.where( 'name LIKE ?', "%#{params[:search][:name]}%")
    #   #byebug
    #   @tags.each do|tag|
    #     @events << tag.events
    #   end
    #   byebug
    # else
    #   @events = Event.none
    # end

