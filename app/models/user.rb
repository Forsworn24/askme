class User < ApplicationRecord
  # эта запись дополнительно добавляет валидацию
  has_secure_password

  before_save :downcase_nickname

  /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i

  validates :email, presence: true, uniqueness: true, 
    format: { with: /\A[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\Z/i,
    message: "Invalid email format" }
  
  validates :nickname, presence: true, uniqueness: true, length: { maximum:40 },
    format: { with: /\A[0-9a-zA-Z\_]+\Z/, message: "Only latin letters, numbers and _ sign" }
    
  def downcase_nickname
    nickname.downcase!
  end
end
