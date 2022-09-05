class HashtagsController < ApplicationController
  def show
    @hashtag = Hashtag.find_by(name: params[:name])

    redirect_to root_path, notice: "Такого хэштега не существует" if @hashtag.blank?
  end
end
