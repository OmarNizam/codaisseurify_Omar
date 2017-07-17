# app/controllers/api/songs_controller.rb

class Api::SongsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render status: 200, json: {
      songs: Song.where(artist_id: params[:artist_id])
    }.to_json
  end

  def show
    render status: 200, json: {
      songs: Song.find(params[:id])
    }.to_json
  end

  def create

    song = Song.new(song_params)
    song.artist_id = params[:artist_id]
    if song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: song.title
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
  end


  private

  def song_params
    params.require(:song).permit(:title)
  end
end
