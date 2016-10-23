class SongsController < ApplicationController

  def new
    @song = Song.new
  end


  def create
    Song.create( song_params )
      redirect_to root_path
    end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to root_path
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end


