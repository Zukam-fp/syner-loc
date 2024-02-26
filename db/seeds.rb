# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

marius = User.create!(email: "marius@mail.com", password: "coucou")
raquette_ping = Stuff.create!(name: "raquette", price: 3, category: "ping pong", user: marius)
ballon_foot = Stuff.create!(name: "ballon", price: 2, category: "foot", user: marius)
ballon_basket = Stuff.create!(name: "ballon", price: 4, category: "basket", user: marius)
