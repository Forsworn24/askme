class Hashtag < ApplicationRecord
  has_many :hashtag_questions
  has_many :questions, through: :hashtag_questions

  def to_param
    name
  end
end
