class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
      render status: 200, json: {
          artists: Artist.all
      }.to_json
    end


  def show
    @artist = Artist.find(params[:id])
  end

end