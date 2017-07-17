require 'rails_helper'

# feature 'Manage songs', js: true do
#   scenario 'add a new song' do
#     visit artists
#


feature 'Manage songs', js: true do
    let!(:artist1){ create:artist, name:"Sammer", image_url:"http://res.cloudinary.com/djkfht9fq/image/upload/v1496639220/bob_marley_1_pxxsmu.jpg" }
  let!(:song1){ create:song, title:"song title", artist_id: artist1.id}


  scenario 'delete a song' do
    visit artist_path(1)
    
    sleep(10)

    expect(page).not_to have_content('song title')
  end
end
