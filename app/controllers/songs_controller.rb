class SongsController < ApplicationController

  def new
    @song = Song.new
  end


  def create
    @song = Song.new( song_params )

    if @song.save
      redirect_to artist_path
    else
      render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to @artist.song
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end

end


