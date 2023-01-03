# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Image.destroy_all

movie = Category.create(name: "Movie")
tv_show = Category.create(name: "TV Show")
video_game = Category.create(name: "Video Game")
book = Category.create(name: "Book")
person = Category.create(name: "Person")
object = Category.create(name: "Object")
place = Category.create(name: "Place")
food = Category.create(name: "Food")
animal = Category.create(name: "Animal")
misc = Category.create(name: "Misc.")

default = Image.create(name: "Default", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059867790158344322/default-user.png")
cat = Image.create(name: "Cat", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059903409781739670/cat.png")
dog = Image.create(name: "Dog", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059903770546409614/dog.png")