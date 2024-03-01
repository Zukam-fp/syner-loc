require "open-uri"

file = URI.open("/app/assets/images/table_ping_pong.jpg")
stuff = Stuff.new(title: "table ping pong", body: "A great table to play ping pong", price: 3, category: "ping pong", address: "6, Avenue des Saules, Lomme, France", user: marius)
stuff.image.attach(io: file, filename: "table_ping_pong.jpg", content_type: "image/jpg")
stuff.save
