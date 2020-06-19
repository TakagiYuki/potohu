class Favorite < ApplicationRecord
  belongs_to :user #いいな
  belongs_to :event #いいな
end
