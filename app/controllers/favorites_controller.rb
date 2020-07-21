class FavoritesController < ApplicationController
  before_action :set_event

  def create
    event = Event.find(params[:event_id])
    favorite = Favorite.new()
    favorite.user_id = current_user.id
    favorite.event_id = event.id

    if favorite.event.prefecture == "北海道"
      current_user.increment!(:counter_hokkaido,1)
     elsif favorite.event.prefecture == "青森県"
      current_user.increment!(:counter_aomori,1)
     elsif favorite.event.prefecture == "岩手県"
      current_user.increment!(:counter_iwate,1)
     elsif favorite.event.prefecture == "宮城県"
      current_user.increment!(:counter_miyagi,1)
     elsif favorite.event.prefecture == "秋田県"
      current_user.increment!(:counter_akita,1)
     elsif favorite.event.prefecture == "山形県"
      current_user.increment!(:counter_yamagata,1)
     elsif favorite.event.prefecture == "福島県"
      current_user.increment!(:counter_hukushima,1)
     elsif favorite.event.prefecture == "茨城県"
      current_user.increment!(:counter_ibaraki,1)
     elsif favorite.event.prefecture == "栃木県"
      current_user.increment!(:counter_tochigi,1)
     elsif favorite.event.prefecture == "群馬県"
      current_user.increment!(:counter_gunma,1)
     elsif favorite.event.prefecture == "埼玉県"
      current_user.increment!(:counter_saitama,1)
     elsif favorite.event.prefecture == "千葉県"
      current_user.increment!(:counter_chiba,1)
     elsif favorite.event.prefecture == "東京都"
      current_user.increment!(:counter_tokyo,1)
     elsif favorite.event.prefecture == "神奈川県"
      current_user.increment!(:counter_kanagawa,1)
     elsif favorite.event.prefecture == "新潟県"
      current_user.increment!(:counter_niigata,1)
     elsif favorite.event.prefecture == "富山県"
      current_user.increment!(:counter_toyama,1)
     elsif favorite.event.prefecture == "石川県"
      current_user.increment!(:counter_ishikawa,1)
     elsif favorite.event.prefecture == "福井県"
      current_user.increment!(:counter_hukui,1)
     elsif favorite.event.prefecture == "山梨県"
      current_user.increment!(:counter_yamanashi,1)
     elsif favorite.event.prefecture == "長野県"
      current_user.increment!(:counter_nagano,1)
     elsif favorite.event.prefecture == "岐阜県"
      current_user.increment!(:counter_gihu,1)
     elsif favorite.event.prefecture == "静岡県"
      current_user.increment!(:counter_shizuoka,1)
     elsif favorite.event.prefecture == "愛知県"
      current_user.increment!(:counter_aichi,1)
     elsif favorite.event.prefecture == "三重県"
      current_user.increment!(:counter_mie,1)
     elsif favorite.event.prefecture == "滋賀県"
      current_user.increment!(:counter_shiga,1)
     elsif favorite.event.prefecture == "京都府"
      current_user.increment!(:counter_kyoto,1)
     elsif favorite.event.prefecture == "大阪府"
      current_user.increment!(:counter_osaka,1)
     elsif favorite.event.prefecture == "兵庫県"
      current_user.increment!(:counter_hyogo,1)
     elsif favorite.event.prefecture == "奈良県"
      current_user.increment!(:counter_nara,1)
     elsif favorite.event.prefecture == "和歌山県"
      current_user.increment!(:counter_wakayama,1)
     elsif favorite.event.prefecture == "鳥取県"
      current_user.increment!(:counter_tottori,1)
     elsif favorite.event.prefecture == "島根県"
      current_user.increment!(:counter_shimane,1)
     elsif favorite.event.prefecture == "岡山県"
      current_user.increment!(:counter_okayama,1)
     elsif favorite.event.prefecture == "広島県"
      current_user.increment!(:counter_hiroshima,1)
     elsif favorite.event.prefecture == "山口県"
      current_user.increment!(:counter_yamaguchi,1)
     elsif favorite.event.prefecture == "徳島県"
      current_user.increment!(:counter_tokushima,1)
     elsif favorite.event.prefecture == "香川県"
      current_user.increment!(:counter_kagawa,1)
     elsif favorite.event.prefecture == "愛媛県"
      current_user.increment!(:counter_ehime,1)
     elsif favorite.event.prefecture == "高知県"
      current_user.increment!(:counter_kouchi,1)
     elsif favorite.event.prefecture == "福岡県"
      current_user.increment!(:counter_hukuoka,1)
     elsif favorite.event.prefecture == "佐賀県"
      current_user.increment!(:counter_saga,1)
     elsif favorite.event.prefecture == "長崎県"
      current_user.increment!(:counter_nagasaki,1)
     elsif favorite.event.prefecture == "熊本県"
      current_user.increment!(:counter_kumamoto,1)
     elsif favorite.event.prefecture == "大分県"
      current_user.increment!(:counter_oita,1)
     elsif favorite.event.prefecture == "宮崎県"
      current_user.increment!(:counter_miyazaki,1)
     elsif favorite.event.prefecture == "鹿児島県"
      current_user.increment!(:counter_kagoshima,1)
     else favorite.event.prefecture == "沖縄県"
      current_user.increment!(:counter_okinawa,1)
    end

    favorite.save
  end

  def destroy
    event = Event.find(params[:event_id])
    favorite = current_user.favorites.find_by(event_id: event.id)

    if favorite.event.prefecture == "北海道"
      current_user.increment!(:counter_hokkaido,-1)
     elsif favorite.event.prefecture == "青森県"
      current_user.increment!(:counter_aomori,-1)
     elsif favorite.event.prefecture == "岩手県"
      current_user.increment!(:counter_iwate,-1)
     elsif favorite.event.prefecture == "宮城県"
      current_user.increment!(:counter_miyagi,-1)
     elsif favorite.event.prefecture == "秋田県"
      current_user.increment!(:counter_akita,-1)
     elsif favorite.event.prefecture == "山形県"
      current_user.increment!(:counter_yamagata,-1)
     elsif favorite.event.prefecture == "福島県"
      current_user.increment!(:counter_hukushima,-1)
     elsif favorite.event.prefecture == "茨城県"
      current_user.increment!(:counter_ibaraki,-1)
     elsif favorite.event.prefecture == "栃木県"
      current_user.increment!(:counter_tochigi,-1)
     elsif favorite.event.prefecture == "群馬県"
      current_user.increment!(:counter_gunma,-1)
     elsif favorite.event.prefecture == "埼玉県"
      current_user.increment!(:counter_saitama,-1)
     elsif favorite.event.prefecture == "千葉県"
      current_user.increment!(:counter_chiba,-1)
     elsif favorite.event.prefecture == "東京都"
      current_user.increment!(:counter_tokyo,-1)
     elsif favorite.event.prefecture == "神奈川県"
      current_user.increment!(:counter_kanagawa,-1)
     elsif favorite.event.prefecture == "新潟県"
      current_user.increment!(:counter_niigata,-1)
     elsif favorite.event.prefecture == "富山県"
      current_user.increment!(:counter_toyama,-1)
     elsif favorite.event.prefecture == "石川県"
      current_user.increment!(:counter_ishikawa,-1)
     elsif favorite.event.prefecture == "福井県"
      current_user.increment!(:counter_hukui,-1)
     elsif favorite.event.prefecture == "山梨県"
      current_user.increment!(:counter_yamanashi,-1)
     elsif favorite.event.prefecture == "長野県"
      current_user.increment!(:counter_nagano,-1)
     elsif favorite.event.prefecture == "岐阜県"
      current_user.increment!(:counter_gihu,-1)
     elsif favorite.event.prefecture == "静岡県"
      current_user.increment!(:counter_shizuoka,-1)
     elsif favorite.event.prefecture == "愛知県"
      current_user.increment!(:counter_aichi,-1)
     elsif favorite.event.prefecture == "三重県"
      current_user.increment!(:counter_mie,-1)
     elsif favorite.event.prefecture == "滋賀県"
      current_user.increment!(:counter_shiga,-1)
     elsif favorite.event.prefecture == "京都府"
      current_user.increment!(:counter_kyoto,-1)
     elsif favorite.event.prefecture == "大阪府"
      current_user.increment!(:counter_osaka,-1)
     elsif favorite.event.prefecture == "兵庫県"
      current_user.increment!(:counter_hyogo,-1)
     elsif favorite.event.prefecture == "奈良県"
      current_user.increment!(:counter_nara,-1)
     elsif favorite.event.prefecture == "和歌山県"
      current_user.increment!(:counter_wakayama,-1)
     elsif favorite.event.prefecture == "鳥取県"
      current_user.increment!(:counter_tottori,-1)
     elsif favorite.event.prefecture == "島根県"
      current_user.increment!(:counter_shimane,-1)
     elsif favorite.event.prefecture == "岡山県"
      current_user.increment!(:counter_okayama,-1)
     elsif favorite.event.prefecture == "広島県"
      current_user.increment!(:counter_hiroshima,-1)
     elsif favorite.event.prefecture == "山口県"
      current_user.increment!(:counter_yamaguchi,-1)
     elsif favorite.event.prefecture == "徳島県"
      current_user.increment!(:counter_tokushima,-1)
     elsif favorite.event.prefecture == "香川県"
      current_user.increment!(:counter_kagawa,-1)
     elsif favorite.event.prefecture == "愛媛県"
      current_user.increment!(:counter_ehime,-1)
     elsif favorite.event.prefecture == "高知県"
      current_user.increment!(:counter_kouchi,-1)
     elsif favorite.event.prefecture == "福岡県"
      current_user.increment!(:counter_hukuoka,-1)
     elsif favorite.event.prefecture == "佐賀県"
      current_user.increment!(:counter_saga,-1)
     elsif favorite.event.prefecture == "長崎県"
      current_user.increment!(:counter_nagasaki,-1)
     elsif favorite.event.prefecture == "熊本県"
      current_user.increment!(:counter_kumamoto,-1)
     elsif favorite.event.prefecture == "大分県"
      current_user.increment!(:counter_oita,-1)
     elsif favorite.event.prefecture == "宮崎県"
      current_user.increment!(:counter_miyazaki,-1)
     elsif favorite.event.prefecture == "鹿児島県"
      current_user.increment!(:counter_kagoshima,-1)
     else favorite.event.prefecture == "沖縄県"
      current_user.increment!(:counter_okinawa,-1)
    end
    favorite.destroy
  end

  def set_event
   @event = Event.find(params[:event_id])
  end
end