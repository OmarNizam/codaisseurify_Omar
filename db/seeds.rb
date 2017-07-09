Song.delete_all
Artist.delete_all

# SONGS

song1 = Song.create( {title: "Get up stand up" } )
song2 = Song.create( {title: "No woman no cry" } )
song3 = Song.create( {title: "I shot the sheriff" } )
song4 = Song.create( {title: "Me Enamore" } )
song5 = Song.create( {title: "Whenever, Whenever" } )
song6 = Song.create( {title: "One moment in time" } )
song7 = Song.create( {title: "Step by Step" } )
song8 = Song.create( {title: "Sorry" } )
song9 = Song.create( {title: "Listen" } )


#ARTISTS


artist1 = Artist.create( {name:"Bob Marley", image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496639220/bob_marley_1_pxxsmu.jpg"})
artist2 = Artist.create( {name:"Shakira", image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496639222/Shakira_rpf4br.png"})
artist3 = Artist.create( {name:"Whitney Houston", image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496639225/Whitney_Houston_ov8xjy.jpg"})
artist4 = Artist.create( {name:"Beyonce", image_url: "http://res.cloudinary.com/djkfht9fq/image/upload/v1496639221/Beyonce_kqgdum.jpg"})


#ASSIGN ARTISTS TO SONGS

artist1.songs << [song1, song2, song3]
artist1.save

artist2.songs << [song4, song5]
artist2.save

artist3.songs << [song6, song7]
artist3.save

artist4.songs << [song8, song9]
artist4.save
