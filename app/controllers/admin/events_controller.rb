class Admin::EventsController < ApplicationController
  before_action :admin_user
  def index
  	@event = Event.new
  	@events = Event.all
  end

  def create
  	@event = Event.new(event_params)
      ActiveRecord::Base.transaction do
        if @event.save!
          EventTag.create!(event_id: @event.id, tag_id: params[:event][:tag_ids])
          @events = Event.all
          flash[:success] = "登録完了"
          redirect_to admin_events_path
        else
          @events = Event.all
          flash.now[:alert] = 'エラー'
          render 'index'
        end
      end
    end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
      if @event.update(event_params)
        flash[:success] = "変更完了"
        redirect_to admin_events_path
      else
        flash.now[:alert] = 'エラー'
        render 'edit'
      end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = "消去完了"
    redirect_to admin_events_path
  end

  private
    def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
      end
    end

    def event_params
      params.require(:event).permit(:name, :article,
      :image, :prefecture, :city, :street, :area_id, :open_time, :close_time, :is_valid, :pick_up)
    end
end

