require 'rails_helper'

RSpec.describe Area, type: :model do

  it "エリア名がある場合、有効である" do
    area = Area.new(
      name: "北海道"
      )
    expect(area).to be_valid
  end

  it "エリア名が50文字の場合、有効である" do
    area = Area.new(
      name: "北" * 50
      )
    expect(area).to be_valid
  end

  it "エリア名が51文字の場合、無効である" do
    area = Area.new(
      name: "北" * 51
      )
    expect(area).to be_invalid
  end

  it "エリア名が無い場合、無効である" do
    area = Area.new(
      name: "  "
      )
    expect(area).to be_invalid
  end

  it "エリア名が重複している場合、無効である" do
    area = Area.create(
      name: "北海道"
      )

    @area = Area.new(
      name: "北海道"
      )

    @area.valid?
    expect(@area.valid?).to eq(false)
  end

end
