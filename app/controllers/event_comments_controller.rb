class EventCommentsController < ApplicationController
  def create
  	# (comment:□, user_id□, event_id□)
  	event = Event.find(params[:event_id])
    comment =EventComment.new(event_comment_params)
    comment.user_id = current_user.id
	  comment.event_id = event.id
	  comment.save
	  redirect_to root_url
  end

  private
	def event_comment_params
	    params.require(:event_comment).permit(:comment)
	end

end
