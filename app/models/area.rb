class Area < ApplicationRecord
  has_many :events
  validates :name, presence: true ,length: {maximum: 50}
  validates :name, uniqueness: true
end
