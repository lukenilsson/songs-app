class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def create
    @song = Song.create(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
    )
    render :show
  end
end
