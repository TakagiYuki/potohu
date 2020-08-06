class EventSeason < ApplicationRecord
  belongs_to :event
  belongs_to :season
end
