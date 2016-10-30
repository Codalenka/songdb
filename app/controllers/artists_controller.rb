class ArtistsController < ApplicationController

    def index
      @artists = Artist.all.order(params[:sort])
      @song = Song.new
     end


    def show
      @artist = Artist.find(params[:id])
      @songs = @artist.songs
    end


    def order_by_name
      @artists = Artist.order_by_name
      render action: :index
    end

    def order_by_created_at
      @artists = Artist.order_by_created_at
      render action: :index

    end
  end

