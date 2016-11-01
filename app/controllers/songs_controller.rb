class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    respond_to do |format|
      # if the response format is html, redirect as usual.
      format.html { redirect_to root_path }

      # if the response format is javascript, do something else.
      format.js { }
    end
  end


  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end



  def delete_all_songs
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @songs.each do |a|
      a.destroy
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end



  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end


