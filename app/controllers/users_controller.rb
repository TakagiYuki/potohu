class UsersController < ApplicationController
  before_action :baria_user, only: [:show, :edit, :update, :favorite]
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    gon.user = @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def favorite
    @tags = Tag.all
    @user = User.find(params[:id])
    @user_favorites = @user.favorites
    @events_ranking  =Event.find(Favorite.group(:event_id).order('count(event_id) desc').limit(5).pluck(:event_id))
  end

  #guest_userログイン用
  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.name = "ゲスト"
      user.password = "ProgrammingIsVeryInteresting"
    end
    log_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  #guest_adminログイン用
  def new_admin
    user = User.find_or_create_by(email: 'guest_admin@admin.com') do |user|
      user.name = "ゲストadmin"
      user.password = "ProgrammingIsVeryInterestingAdmin"
      user.admin = true
    end
    log_in user
    redirect_to root_path, notice: 'adminユーザーとしてログインしました。'
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def baria_user
      @user = User.find(params[:id])
      unless @user.id == current_user.id
        redirect_to root_url
      end
    end
end
