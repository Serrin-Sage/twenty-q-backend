# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.destroy_all

default = Image.create(name: "Default", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059867790158344322/default-user.png")
cat = Image.create(name: "Cat", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059903409781739670/cat.png")
dog = Image.create(name: "Dog", url: "https://cdn.discordapp.com/attachments/751140341348040826/1059903770546409614/dog.png")

user1 = User.create(username: "random1" )

message1 = Message.create(content: "Hello, this is just a test message!", user_id: user1.id)