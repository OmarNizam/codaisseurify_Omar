class SongsController < ApplicationController
  before_action :set_artist

def index
  @songs = Sond.all
end

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
    if @song.save
      redirect_to artist_path(@artist), notice: "You added a song!!"
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
