class Event < ApplicationRecord
  belongs_to :area
  attachment :image #refile用
end
