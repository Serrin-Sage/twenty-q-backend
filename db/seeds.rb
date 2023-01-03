# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lobby = Lobby.create(lobbyname: "test")

movie = Game.create(category: "Movie", lobby_id: 1)
tv_show = Game.create(category: "TV Show", lobby_id: 1)
video_game = Game.create(category: "Video Game", lobby_id: 1)
book = Game.create(category: "Book", lobby_id: 1)
person = Game.create(category: "Person", lobby_id: 1)
object = Game.create(category: "Object", lobby_id: 1)
place = Game.create(category: "Place", lobby_id: 1)
food = Game.create(category: "Food", lobby_id: 1)
animal = Game.create(category: "Animal", lobby_id: 1)
misc = Game.create(category: "Misc.", lobby_id: 1)