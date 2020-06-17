require 'rails_helper'

RSpec.describe "UsersSignups", type: :request do
  describe "GET /signup" do
    it "is invalid signup information" do #登録できなかった時
      get new_user_path
      expect {
        post users_path, params: {
          user: {
            name: "",
            email: "Yamada@Taro",
            password: "Yamada",
            password_confirmation: "Taro"
          }
        }
      }.not_to change(User, :count)
    end

    it "is valid signup information" do #登録できた時
      get new_user_path
      expect {
        post users_path, params: {
          user: {
            name: "TamadaTaro",
            email: "Tamada@example.com",
            password: "password",
            password_confirmation: "password"
          }
        }
      }.to change(User, :count).by(1)
    end
  end
end