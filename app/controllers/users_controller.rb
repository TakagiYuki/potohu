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
    # @favorites = @user.favorites
    # event.prefecture = "北海道"
    #   if params[:event.prefecture]
    #     event.prefecture = params[:event.prefecture]
    #    else
    #     event.prefecture = "北海道"
    #   end
    @favorites = @user.favorites
    # Event.where(prefecture: event.prefecture, id: Favorite.group(:event_id).pluck(:event_id))
    #.groupでFavorite内のevent_idを全取得 .pluckでカラムの値を取得 最終的にいいねが多いevent_idからeventを取得
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    elsez
      render 'edit'
    end
  end

  def favorite
    @user = User.find(params[:id])
    @user_favorites = @user.favorites
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
