class Admin::TagsController < ApplicationController
  def index
  	@tag = Tag.new
  	@tags = Tag.all
  end
  
  def create
  	@tag = Tag.new(tag_params)
  	  if @tag.save
        flash[:success] = "登録完了"
        redirect_to admin_tags_path
  	  else
        @tags = Tag.all
        render 'index'
  	  end
  end

  def edit
  	@tag = Tag.find(params[:id])
  end
  
  def update
    @tag = Tag.find(params[:id])
      if @tag.update(tag_params)
        redirect_to admin_tags_path
      else
        render 'edit'
    end
  end
  
  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to admin_tags_path
  end
  
  private
	def admin_user
      if !logged_in? || !current_user.admin?
        redirect_to(root_url)
	  end
	end

	def tag_params
      params.require(:tag).permit(:name, :image)
    end
end
