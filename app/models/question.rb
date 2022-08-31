class Question < ApplicationRecord
  validates :body, presence: true, length: { maximum:280 }

  belongs_to :user
  belongs_to :author, class_name: "User", optional: true

  has_many :hashtag_questions, dependent: :destroy
  has_many :hashtags, through: :hashtag_questions

  after_commit :create_hashtags, on: %i[create update]

  def create_hashtags
    extract_hashtags.each do |body|
      hashtags.create(name: body)
    end
  end

  def extract_hashtags
    "#{body} #{answer}".downcase.scan(/#[[:word:]]+/).map{ |text| text.gsub("#", "") }
  end

end
