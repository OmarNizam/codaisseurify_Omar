# app/views/artists/_artist.json.jbuilder

json.extract! artist, :id, :name, :image_url, :created_at, :updated_at
json.url artist_url(artist, format: :json)
