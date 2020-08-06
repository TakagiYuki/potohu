class EventCommentsController < ApplicationController
  def create
  	@event = Event.find(params[:event_id])
    @event_comment =EventComment.new(event_comment_params)
    @event_comment.user_id = current_user.id
	  @event_comment.event_id = @event.id
	  @event_comment.save
  end

  def destroy
    @event_comment = EventComment.find(params[:event_id])
    @event = @event_comment.event
    @event_comment.destroy
  end

  private
	  def event_comment_params
	    params.require(:event_comment).permit(:comment)
	  end
end

