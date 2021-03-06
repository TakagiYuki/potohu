require 'rails_helper'

RSpec.describe Event, type: :model do
  
  
    let(:area){
      Area.create!(name: "asddd")
    }

  it "イベントがある場合、有効である" do

  event = Event.new(
    name:"東京タワー",
    article:"333メートルの電波塔",
	  image_id:"abcdefg",
	  prefecture:"東京都",
	  city:"港区芝公園",
	  street:"4丁目2-8",
	  is_valid:"true",
	  open_time:"2020-2-22",
	  close_time:"2020-2-22",
	  area_id: area.id,
	  latitude: "123",
    longitude: "456",
    pick_up: "true"
    )
    expect(event).to be_valid
  end

  it "イベント名が無い場合、無効である" do
    event = Event.new(
    name:"",
    article:"333メートルの電波塔",
    image_id:"abcdefg",
    prefecture:"東京都",
    city:"港区芝公園",
    street:"4丁目2-8",
    is_valid:"true",
    open_time:"2020-2-22",
    close_time:"2020-2-22",
    area_id: area.id,
    latitude: "123",
    longitude: "456",
    pick_up: "true"
    )
    expect(event).to be_invalid
  end
end
