require 'rails_helper'

feature 'Add song', js: true do

  before do
    DatabaseCleaner.clean
  end

  let!(:artist) { create :artist, name: "adele" }
  let!(:song1) { create :song, artist: artist }
  let!(:song2) { create :song, artist: artist }


  scenario 'add a new song' do


    # Point the browser towards the artists path
    visit artist_path(artist)

    # Enter description in the text field
    fill_in('song_input', with: 'Thriller')


    # Press enter (to submit the form)
    click_button('submit_song')

    # Expect the new song to be displayed in the list of song
    expect(page).to have_content('Thriller')
  end
end