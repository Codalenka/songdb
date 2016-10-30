class ArtistsController < ApplicationController

    def index
      @artists = Artist.all.order(params[:sort])
      @song = Song.new
     end


    def show
      @artist = Artist.find(params[:id])
      @songs = @artist.songs
  end
end

