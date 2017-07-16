class ArtistsController < ApplicationController

  def index
    @artists = Artist.order(params[:order])
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end
end
