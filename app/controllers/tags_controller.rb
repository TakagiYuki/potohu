class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    @events = @tag.events
  end
end
