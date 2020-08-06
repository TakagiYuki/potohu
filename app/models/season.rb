class Season < ApplicationRecord
  has_many :event_seasons, dependent: :destroy
  has_many :events, through: :event_seasons
end
