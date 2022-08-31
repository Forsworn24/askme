class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.where(name: params[:id])
    @hq = HashtagQuestion.where(id: @hashtag.ids)
    @questions = Question.where(id: @hq.pluck(:question_id))
  end
end
