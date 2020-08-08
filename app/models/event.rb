class Event < ApplicationRecord
  belongs_to :area #エリア
  has_many :event_tags, dependent: :destroy #タグ
  has_many :tags, through: :event_tags #タグ
  has_many :event_seasons, dependent: :destroy #タグ
  has_many :seasons, through: :event_seasons #タグ
  has_many :event_comments #コメント
  attachment :image #refile用
  has_many :favorites #いいな

  scope :enabled, -> {where(is_valid: true)}
  scope :pickup, -> {where(pick_up: true)}

  validates :name, presence: true, length: {maximum: 50}
  validates :article, presence: true, length: {maximum: 255}
  validates :prefecture, presence: true, length: {maximum: 50}
  validates :city, presence: true, length: {maximum: 50}
  validates :street, presence: true, length: {maximum: 50}
  validates :is_valid, inclusion: { in: [true, false] }
  validates :open_time, presence: true
  validates :close_time, presence: true
  validates :area_id, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
