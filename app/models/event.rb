class Event < ApplicationRecord
  belongs_to :area
  has_many :event_tags, dependent: :destroy #タグ
  has_many :tags, through: :event_tags #タグ
  has_many :event_comments #コメント
  attachment :image #refile用
  has_many :favorites #いいな

  #validates :prefecture, presence: true
  #validates :city, presence: true
  #validates :street, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  enum time_status: [:event_before, :event_now, :event_finsh]
  #開催前,開催中,開催終了
end
