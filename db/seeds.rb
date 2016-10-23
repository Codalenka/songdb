Song.delete_all
Artist.delete_all

song1 = Song.create(name: "Hello")
song2 = Song.create(name: "When we were Young")
song3 = Song.create(name: "Sweetest Devotion")
song4 = Song.create(name: "Remedy")
song5 = Song.create(name: "Reaper")
song6 = Song.create(name: "Cheap Thrills")
song7 = Song.create(name: "Unstoppable")
song8 = Song.create(name: "Bird set Free")
song9 = Song.create(name: "Take it Back")
song10 = Song.create(name: "One")
song11 = Song.create(name: "Sing")
song12 = Song.create(name: "Tenerife Sea")

artist1 = Artist.create(name: "Adele", remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1477133583/Adele_-_25__Official_Album_Cover_hgfqab.png", bio: "Adele Laurie Blue Adkins, born 5 May 1988) is an English singer-songwriter. Graduating from the BRIT School for Performing Arts and Technology in 2006, Adele was given a recording contract by XL Recordings after a friend posted her demo on Myspace the same year. In 2007, she received the Brit Awards critics Choice award and won the BBC Sound of 2008 poll. Her debut album, 19, was released in 2008 to commercial and critical success. It is certified seven times platinum in the UK, and double platinum in the US. An appearance she made on Saturday Night Live in late 2008 boosted her career in the US. At the 51st Grammy Awards in 2009, Adele received the awards for Best New Artist and Best Female Pop Vocal Performance.")
artist2 = Artist.create(name: "Sia", remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1477133583/sia-this-is-acting-cover-bb3-billboard-650_sqljnk.jpg", bio: "Sia Kate Isobelle Furler (born 18 December 1975), referred to mononymously as Sia is an Australian singer, songwriter and video music director. She started her career as a singer in the local Adelaide acid jazz band Crisp in the mid-1990s. In 1997, when Crisp disbanded, she released her debut studio album titled OnlySee in Australia. She then moved to London, England, and provided lead vocals for the British duo Zero 7. In 2000, Sia signed to Sony Music's sub-label Dance Pool and released her second studio album, Healing Is Difficult, the following year. Displeased with the promotion of the record, she signed to Go! Beat and released her third studio album, Colour the Small One, in 2004. The project struggled to connect with a mainstream audience, and so Sia relocated to New York City in 2005 and began touring across the United States. She released her fourth and fifth studio releases, Some People Have Real Problems and We Are Born, in 2008 and 2010, respectively. She then took a hiatus from performing, during which she focused on songwriting for other artists." )
artist3 = Artist.create(name: "Ed Sheeran", remote_image_url: "http://res.cloudinary.com/dwbu8qlck/image/upload/v1477133584/91OW8xBImNL._SL1500__lfz9m9.jpg", bio: "Edward Christopher Ed Sheeran (born 17 February 1991) is an English singer-songwriter, musician, and occasional actor. He was born in Hebden Bridge in Yorkshire and raised in Framlingham, Suffolk. He dropped out of school at 16, and moved to London the following year, in 2008, to pursue a career in music. In early 2011, Sheeran independently released the extended play, No. 5 Collaborations Project, which caught the attention of Elton John and Jamie Foxx. After signing with Asylum Records, his debut album, + (read as plus), was released on 9 September 2011 and has since been certified six-times platinum in the UK. The album contains the single The A Team, which earned him the Ivor Novello Award for Best Song Musically and Lyrically. In 2012, Sheeran won the Brit Awards for Best British Male Solo Artist and British Breakthrough Act.")


artist1.songs << [song1, song2, song3, song4]
artist1.save
artist2.songs << [song5, song6, song7, song8]
artist2.save
artist3.songs << [song9, song10, song11, song12]
artist3.save
