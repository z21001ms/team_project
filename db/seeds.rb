# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
song = Song.create(platform: 0, url: "https://www.youtube.com/watch?v=43J3Hdljex4",video_id: "43J3Hdljex4")
coordinate = Coordinate.create(latitude: 35.6602646, longitude: 139.4780048)
CoordinateSong.create(song_id: song.id, coordinate_id: coordinate.id)