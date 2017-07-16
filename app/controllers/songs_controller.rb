class SongsController < ApplicationController
  before_action :set_artist



  def show
    @song = Song.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@artist), notice: "You added a song!!" }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { redirect_to artist_path }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist), notice: "Song deleted !!"
  end

private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

end
