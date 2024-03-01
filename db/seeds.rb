# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Stuff.destroy_all
User.destroy_all

marius = User.create!(email: "marius@mail.com", password: "coucou")
zylla = User.create!(email: "zukam@gmail.com", password: "azerty")
dilombre = User.create!(email: "dilombre@gmail.com", password: "lombre")
oscar = User.create!(email: "oscar@gmail.com", password: "aaaaaa")


file = URI.open("./app/assets/images/table_ping_pong.jpg")
stuff1 = Stuff.new(name: "table", price: 35, category: "Ping-pong", address: "6, Avenue des Saules, Lomme, France", user: marius)
stuff1.image.attach(io: file, filename: "table_ping_pong.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/raquette ping pong.jpg")
stuff1 = Stuff.new(name: "Raquette", price: 10, category: "Ping-pong", address: "26, Avenue des Saules, Lomme, France", user: oscar)
stuff1.image.attach(io: file, filename: "raquette ping pong.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/ballon CDM football.jpg")
stuff1 = Stuff.new(name: "Ballon CDM Quatar", price: 100, category: "Foot", address: "Avenue Arthur Notebart, 59160 Lomme", user: dilombre)
stuff1.image.attach(io: file, filename: "ballon CDM football.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/chaussure basketball.jpg")
stuff1 = Stuff.new(name: "webLock2.0", price: 30, category: "Basket", address: "Rue Winston Churchill, 59160 Lomme", user: zylla)
stuff1.image.attach(io: file, filename: "chaussure basketball.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/balle de tennis.jpg")
stuff1 = Stuff.new(name: "35 balles RG", price: 15, category: "Tennis", address: "Rue du Maréchal Foch, 59160 Lomme", user: marius)
stuff1.image.attach(io: file, filename: "balle de tennis.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/club de golf et mini golf.jpg")
stuff1 = Stuff.new(name: "Clubs Golf & Minigolf", price: 50, category: "Mini-golf", address: "35, Avenue des Saules, Lomme, France", user: oscar)
stuff1.image.attach(io: file, filename: "club de golf et mini golf.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/club et sac golf.jpg")
stuff1 = Stuff.new(name: "Sac & clubs golf", price: 45, category: "Mini-golf", address: "Rue Gustave Delory, 59160 Lomme", user: dilombre)
stuff1.image.attach(io: file, filename: "club et sac golf.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/ballon de basket.jpg")
stuff1 = Stuff.new(name: "Ballon Nike", price: 20, category: "Basket", address: "Rue Henri Bailleux, 59160 Lomme", user: zylla)
stuff1.image.attach(io: file, filename: "ballon de basket.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/chaussure handball.jpg")
stuff1 = Stuff.new(name: "basket handball", price: 25, category: "HandBall", address: "Rue du Docteur Lepan, 59160 Lomme", user: marius)
stuff1.image.attach(io: file, filename: "chaussure handball.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/raquette badminton.jpg")
stuff1 = Stuff.new(name: "Raquette", price: 50, category: "Badminton", address: "Rue Raymond Berr, 59120 Loos", user: oscar)
stuff1.image.attach(io: file, filename: "raquette badminton.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/crampon foot.jpg")
stuff1 = Stuff.new(name: "Crampon foot", price: 20, category: "Foot", address: "Rue Gustave Delory, 59160 Lomme", user: dilombre)
stuff1.image.attach(io: file, filename: "crampon foot.jpg", content_type: "image/jpg")
stuff1.save

file = URI.open("./app/assets/images/ballon pilate.jpg")
stuff1 = Stuff.new(name: "Ballon pilate", price: 10, category: "Pilate", address: "Rue Arago, 59120 Loos", user: zylla)
stuff1.image.attach(io: file, filename: "ballon pilate.jpg", content_type: "image/jpg")
stuff1.save



booking1 = Booking.create!(date_starting: "2002-10-22", date_ending: "2010-10-23", stuff: stuff1, user: marius)
