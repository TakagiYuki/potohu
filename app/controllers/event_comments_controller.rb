class EventCommentsController < ApplicationController
  def create
  	# (comment:□, user_id□, event_id□)
  	@event = Event.find(params[:event_id])
    @event_comment =EventComment.new(event_comment_params)
    @event_comment.user_id = current_user.id
	  @event_comment.event_id = @event.id
	  @event_comment.save
  end


# def create
#     @event = Event.find(params[:event_id])
#     @event_new = Event.new
#     @evevnt_comment = @event.event_comments.new(event_comment_params)
#     @event_comment.user_id = current_user.id
#     if @event_comment.save
#       flash[:success] = "Comment was successfully created."
#     else
#       @event_comments = EventComment.where(id: @event)
#     end
#   end

  private
	def event_comment_params
	    params.require(:event_comment).permit(:comment)
	end

end

