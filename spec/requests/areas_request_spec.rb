require 'rails_helper'

RSpec.describe "Areas", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/areas/new"
      expect(response).to have_http_status(:success)
    end
  end

end
