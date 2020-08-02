class EventsController < ApplicationController
  def index
    @areas = Area.all
    @events = Event.all
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
    if params[:search][:prefecture].present? && params[:search][:name].empty?
      @events = Event.where(prefecture: params[:search][:prefecture])

    elsif params[:search][:prefecture].blank? && params[:search][:name].present?
       #@events = Event.joins(:tags).where('tags.name LIKE ?', "%#{params[:search][:name]}%")
        #@events = Event.joins(:tags).where('tags.name LIKE ?', "%自然%")

        #@events = Event.joins(:tags).where('tags.name = ?', params[:search][:name])
        @events = Event.joins(:tags).where('tags.name in (?)', params[:search][:name])
       #@events = Event.joins(:tags).where(name: params[:search][:name])
    else
      #@events = Event.joins(:tags).where('tags.name LIKE ?',"%#{params[:search][:name]}%").where(events: {prefecture: params[:search][:prefecture]})

    end
  end
end


