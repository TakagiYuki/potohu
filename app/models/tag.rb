class Tag < ApplicationRecord
  has_many :event_tags, dependent: :destroy
  has_many :events, through: :event_tags

  # validates :name, presence: true
  attachment :image #refile用
end
