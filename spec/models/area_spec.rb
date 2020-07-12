require 'rails_helper'

RSpec.describe Area, type: :model do

  it "名前がある場合、有効である" do
    area = Area.new(name: "1")
    expect(area).to be_valid
  end

  #名前が空の場合は弾くべき
  describe "name" do
  	it "gives presence" do
      area.name = "  "
      expect(user).to be_invalid
    end

  #名前が空の場合は弾くべき
    it "gives presence" do #空
      area.name = "三重"
      expect(user).to be_valid
    end
  end

end
