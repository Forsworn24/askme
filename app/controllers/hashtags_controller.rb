class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.find_by(name: params[:name])

    if !@hashtag.present?
      redirect_to root_path, notice: "Такого хэштега не существует"
      return
    end

    @hq = HashtagQuestion.where(hashtag_id: @hashtag.id)
    @questions = Question.where(id: @hq.pluck(:question_id))
  end
end
