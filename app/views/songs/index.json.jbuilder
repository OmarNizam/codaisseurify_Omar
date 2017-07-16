# app/views/songs/index.json.jbuilder

json.array! @songs, partial: 'songs/song', as: :song
