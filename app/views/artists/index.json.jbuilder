# app/views/artists/index.json.jbuilder

json.array! @artists, partial: 'artists/artist', as: :artist
