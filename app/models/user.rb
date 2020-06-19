class User < ApplicationRecord
  
  has_many :event_comments #コメント
  before_save :downcase_email #小文字で保存
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i #フォーマット

  validates :name,
    presence: true, #存在すること
    length: { maximum: 50 } #上限値

  validates :email,
    presence: true, #存在すること
    length: { maximum: 255 }, #上限値
    format: { with: VALID_EMAIL_REGEX }, #フォーマット
    uniqueness: { case_sensitive: false } #重複NG

  has_secure_password #bcryptを使用可能に
  validates :password,
    presence: true, #存在すること
    length: { minimum: 6 } #下限値

      private
      def downcase_email #before_saveで使用
        email.downcase!
      end


end
