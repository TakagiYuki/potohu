require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do

  #タイトルのテスト
  describe "#full_title" do
    context "page_title is empty" do
      it "removes symbol" do
        expect(helper.full_title).to eq('ポトフ')
      end
    end

    #サブタイトルのテスト.
    context "page_title is not empty" do
      it "returns title and application name where contains symbol" do
        expect(helper.full_title('サブタイトル')).to eq('サブタイトル | ポトフ')
      end
    end

  end
end