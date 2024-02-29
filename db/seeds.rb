# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Stuff.destroy_all
User.destroy_all
marius = User.create!(email: "marius@mail.com", password: "coucou")
connard = User.create!(email: "connard@mail.com", password: "pipiprout")
stuff1 = Stuff.create!(name: "raquette", price: 3, category: "ping pong", address: "Lille", user: marius)
stuff2 = Stuff.create!(name: "ballon", price: 2, category: "foot", address: "Lille", user: marius)
stuff3 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)
stuff4 = Stuff.create!(name: "raquette", price: 3, category: "ping pong",address: "Lille", user: marius)
stuff5 = Stuff.create!(name: "ballon", price: 2, category: "foot",address: "Lille", user: marius)
stuff6 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)
stuff7 = Stuff.create!(name: "raquette", price: 3, category: "ping pong",address: "Lille", user: marius)
stuff8 = Stuff.create!(name: "ballon", price: 2, category: "foot",address: "Lille", user: marius)
stuff9 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)
stuff10 = Stuff.create!(name: "raquette", price: 3, category: "ping pong", address: "Lille",user: marius)
stuff11 = Stuff.create!(name: "ballon", price: 2, category: "foot",address: "Lille", user: marius)
stuff12 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)
stuff13 = Stuff.create!(name: "raquette", price: 3, category: "ping pong",address: "Lille", user: marius)
stuff14 = Stuff.create!(name: "ballon", price: 2, category: "foot", address: "Lille", user: marius)
stuff15 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)
stuff16 = Stuff.create!(name: "raquette", price: 3, category: "ping pong",address: "Lille", user: marius)
stuff17 = Stuff.create!(name: "ballon", price: 2, category: "foot",address: "Lille", user: marius)
stuff18 = Stuff.create!(name: "ballon", price: 4, category: "basket",address: "Lille", user: marius)

booking1 = Booking.create!(date_starting: "2002-10-22", date_ending: "2010-10-23", stuff: stuff1, user: marius)
booking2 = Booking.create!(date_starting: "2002-10-22", date_ending: "2010-10-23", stuff: stuff2, user: marius)
booking3 = Booking.create!(date_starting: "2002-10-22", date_ending: "2010-10-23", stuff: stuff3, user: connard)
