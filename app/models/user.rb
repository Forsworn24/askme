class User < ApplicationRecord
  # эта запись дополнительно добавляет валидацию
  has_secure_password

  before_validation :downcase_nickname

  validates :email, presence: true, uniqueness: true, 
    format: { with: /\A[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\Z/i }
  
  validates :nickname, presence: true, uniqueness: true, length: { maximum:40 },
    format: { with: /\A[0-9a-zA-Z\_]+\Z/ }

  has_many :questions, dependent: :delete_all
  has_many :authors, dependent: :delete_all
    
  def downcase_nickname
    nickname.downcase!
  end
end
