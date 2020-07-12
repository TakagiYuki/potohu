class EventComment < ApplicationRecord
  belongs_to :user #コメント
  belongs_to :event #コメント
end
