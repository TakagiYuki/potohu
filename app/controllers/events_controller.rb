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
  end

  def search
    if params[:search][:prefecture].present? && params[:search][:name].empty?
      @events = Event.where('prefecture LIKE ?', "%#{params[:search][:prefecture]}%")
    elsif params[:search][:prefecture].blank? && params[:search][:name].present?
      @events = Event.joins(:tags).where('tags.name LIKE ?', "%#{params[:search][:name]}%")
    else
      @events = Event.joins(:tags).where('events.prefecture LIKE ? AND tags.name LIKE ?', "%#{params[:search][:prefecture]}%","%#{params[:search][:name]}%")
    end
  end
end


