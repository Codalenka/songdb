# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

artist1 = Artist.create(name: "Adele")
artist2 = Artist.create(name: "Sia")
artist3 = Artist.create(name: "Ed Sheeran")

artist1.songs << [song1, song2, song3, song4]
artist1.save
artist2.songs << [song5, song6, song7, song8]
artist2.save
artist3.songs << [song9, song10, song11, song12]
artist3.save