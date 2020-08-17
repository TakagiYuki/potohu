class User < ApplicationRecord
  has_many :event_comments
  has_many :favorites
  attachment :image
  before_save :downcase_email #小文字で保存
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i #フォーマット

  validates :email,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  has_secure_password #bcryptを使用可能に
  validates :password,
    presence: true,
    length: { minimum: 6 }

      private
      def downcase_email #before_saveで使用
        email.downcase!
      end
end
