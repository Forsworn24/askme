class User < ApplicationRecord
  extend FriendlyId
  friendly_id :nickname, use: [:slugged, :history]
  # эта запись дополнительно добавляет валидацию
  has_secure_password

  before_validation :downcase_nickname

  validates :email, presence: true, uniqueness: true, 
    format: { with: /\A[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\Z/i }
  
  validates :nickname, presence: true, uniqueness: true, length: { maximum:40 },
    format: { with: /\A[0-9a-zA-Z\_]+\Z/ }

  has_many :questions, dependent: :delete_all

  include Gravtastic
  gravtastic(secure: true, filetype: :png, size: 100, default: 'retro')
    
  def downcase_nickname
    nickname.downcase!
  end

  def should_generate_new_friendly_id?
    nickname_changed?
  end
end
