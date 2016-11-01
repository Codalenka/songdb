require 'rails_helper'

feature 'Add song', js: true do

  before do
    DatabaseCleaner.clean
  end

  let!(:artist1) { create :artist, name: "adele", remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1477133583/Adele_-_25__Official_Album_Cover_hgfqab.png" }
  let!(:song1) { create :song, name: "song1", artist: artist1 }



  scenario 'add a new song' do

    # Point the browser towards the artists (home)page.
    visit artists_path

    #Click the link to the showpage of the artist.
    click_link('artist_link')

    #Expect the page to show the songs for this artist
    expect(page).to have_content('song1')

    # Enter description in the text field
    fill_in('song_input', with: 'Thriller')


    # Press enter (to submit the form)
    click_button('submit_song')


    # Expect the new song to be displayed in the list of song. DOES NOT FIND AJAX?!
    expect(page).to have_content('Thriller')

  end
end