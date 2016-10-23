class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.order(params[:sort])
   end


  def show
    @artist = Artist.find(params[:id])
  end
end