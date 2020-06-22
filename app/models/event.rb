class Event < ApplicationRecord
  belongs_to :area
  has_many :event_tags, dependent: :destroy #タグ
  has_many :tags, through: :event_tags #タグ
  has_many :event_comments #コメント
  attachment :image #refile用
  has_many :favorites #いいな

  validates :prefecture, presence: true
  validates :city, presence: true
  validates :street, presence: true
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  enum time_status: [:event_before, :event_now, :event_finsh]
  #開催前,開催中,開催終了

  def save_events(tags)
  	#tagsテーブルのtag_nameカラムの一覧を取り出す。空だったらtrue
	current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
	#既存のtagsから引数のtagsを引く ex)[tag2,tag3,tag4]-[tag2,tag3]=[tag4]<= old_tag
	old_tags = current_tags - tags
	#引数のtagsから既存のtagsを引く ex)[tag2,tag3]-[tag2,tag3,tag4]=[tag4]<= new_tag
	new_tags = tags - current_tags

	# Destroy
	old_tags.each do |old_name|
      #eventのtagsからold_tagsを探し消去
	  self.tags.delete Tag.find_by(tag_name:old_name)
	end

	# Create
	new_tags.each do |new_name|
	  #eventのtagsからnew_tagsを探す　あれば取得　なければ作る
	  event_tag = Tag.find_or_create_by(tag_name:new_name)
	  #eventのtags << event_tagを追加
	  self.tags << event_tag
	end
  end
end
