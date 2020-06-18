class Area < ApplicationRecord
  has_many :events
  validates :name, presence: true
  validates :name, uniqueness: true
end
