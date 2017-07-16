# app/controllers/api/songs_controller.rb

class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def show
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def create
    artist = Artist.find(params[:artist_id])
    song = Song.new(song_params)

    if song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: song
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end
end
