class EventsController < ApplicationController
  def index
    @tags = Tag.all
    @events_ranking =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
    @events_pickup = Event.pickup.limit(4)
    if params[:area_id]
      @area = Area.find(params[:area_id])
      @events = @area.events
    end
  end

  def rank
    @tags = Tag.all
    # groupでFavorite内のevent_idを全取得 order昇順 pluckカラムの情報取得
    @events_ranking =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
    @events_ranking_all =Event.find(Favorite.group(:event_id).order('count(event_id) desc').pluck(:event_id))
    @events_pickup = Event.pickup.limit(4)
  end

  def pickup
    @tags = Tag.all
    @events_pickup_all = Event.pickup
    @events_pickup = Event.pickup.limit(4)
    @events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end

  def show
    @tags = Tag.all
    @event = Event.find(params[:id])
    @events = Event.where(prefecture: @event.prefecture).limit(4)
    @event_comment = EventComment.new
    @event_comments = @event.event_comments
    @events_pickup = Event.pickup.limit(4)
    @events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))

    #現在時刻
    old = Date.new(2011,11,11)
    now = Date.today
    #曜日関連
    weeks = ["(月)","(火)","(水)","(木)","(金)","(土)","(日)"]
    open_index = @event.open_time.strftime("%u").to_i
    close_index = @event.close_time.strftime("%u").to_i
    @open_date = @event.open_time.strftime("%-m月%-d日#{weeks[open_index - 1]}")
    @close_date = @event.close_time.strftime("%-m月%-d日#{weeks[close_index - 1]}")
    @status = "開催前"

    #開始終了の判定
    if now > @event.open_time && now < @event.close_time
      @status = "開催中"
    elsif now > @event.close_time && old < @event.open_time
      @status = "終了"
    elsif now > @event.open_time  && old > @event.open_time
      @status = ''
      @open_date = ''
      @close_date = ''
    end
  end

  def search
    if params[:search][:prefecture].present? && params[:search][:name].blank?
      @events = Event.where(prefecture: params[:search][:prefecture])
    elsif params[:search][:prefecture].blank? && params[:search][:name].present?
      @events = Event.joins(:tags).where('tags.name in (?)', params[:search][:name])
    else
      @events = Event.joins(:tags).where('tags.name in (?)', params[:search][:name]).where(events: {prefecture: params[:search][:prefecture]})
    end

    @tags = Tag.all
    @events_ranking_area =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
    @events_pickup = Event.pickup.limit(4)
    @events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end
end
