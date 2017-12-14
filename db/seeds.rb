# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

fun_games = Category.create!(name: "Fun and Games")
winter_time = Category.create!(name: "Let it snow!")
pub_crawl = Category.create!(name: "Meet for drinks with stranger")

modern_and_minimal = Category.create!(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create!(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create!(name: "Warm and Cozy")


#User

cas = User.create!(email: "cas@mail.nl", password: "987654")
miriam = User.create!(email: "miriam@codaisseurbnb.com", password: "987654")
wouter = User.create!(email: "wouter@codaisseurbnb.com", password: "987654")
matt = User.create!(email: "matt@codaisseurbnb.com", password: "987654")

#Events

event_1 = Event.create!(name: "Event One", description: "This is content for Event One", user: cas, categories: [fun_games])

event_2 = Event.create!(name: "Event Two", description: "This is content for Event Two", user: miriam, categories: [winter_time, fun_games])

event_3 = Event.create!( name: "Event Three", description: "This is content for Event Three", user: wouter, categories: [pub_crawl, fun_games ])

#photos

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_1)

photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_2)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_2)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_2)

photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_3)
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_3)
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dlcdg8wkp/image/upload/v1513260480/image1_ww7uql.jpg", event: event_3)
