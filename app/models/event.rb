class Event < ApplicationRecord
  belongs_to :area
  has_many :event_tags, dependent: :destroy
  has_many :tags, through: :event_tags
  has_many :event_seasons, dependent: :destroy
  has_many :seasons, through: :event_seasons
  has_many :event_comments
  attachment :image
  has_many :favorites

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
  # validates :pick_up, inclusion: { in: [true, false] }

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
