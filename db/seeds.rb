# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all

user1 = User.create(username: "Saman")
user2 = User.create(username: "Natalie")

Task.create(taskname: "Get lunch", description: "Go outside and get some Chipotle", user_id: user1.id)
Task.create(taskname: "Take dog out", description: "Don't forget poop bags", user_id: user2.id)