class SessionsController < ApplicationController
  def new
  end

  def create
  	#session: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
    #email: Yamada@example.com => params[:session][:email]
    #password: yamada001       => params[:session][:password]
    #paramsハッシュの中{session:{email: “user@example.com”, password: “foobar”}}

    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # 次回：ここに、ユーザーページへリダイレクトさせる記述を加える
    else
      flash.now[:danger] = 'メールアドレスかパスワードが正しくありません'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
