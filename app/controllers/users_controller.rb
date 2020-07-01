class UsersController < ApplicationController
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
    @favorites = Favorite.where(user_id: @user_id) #user1さんのいいねを取得　いいねが持ってるイベントidを取得
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
end
