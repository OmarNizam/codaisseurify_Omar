require 'rails_helper'



feature 'Manage songs', js: true do
    let!(:artist1){ create:artist, name:"Sammer", image_url:"http://res.cloudinary.com/djkfht9fq/image/upload/v1496639220/bob_marley_1_pxxsmu.jpg" }
  let!(:song1){ create:song, title:"song title", artist_id: artist1.id}


  scenario 'delete a song' do
    visit artist_path(1)
    click_link('remove-1')
    sleep(10)
    expect(page).not_to have_content('song title')
  end
  scenario 'add a song' do
    visit artist_path(1)
    fill_in 'form_title', with: 'test song'
    click_submit('Add')
    expect(page).to have_content('test song')
  end
end
