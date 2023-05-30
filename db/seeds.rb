# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Contract.destroy_all
Team.destroy_all
User.destroy_all
​
puts "Creating users..."
glandalf    = User.create!(name: "Glandalf le Gland", email: "glandalf@sarouelmandsl.com", password: "azerty")
jean  = User.create!(name: "Jean Neige", email: "jean-neige@ariadls.com", password: "azerty")
sam  = User.create!(name: "Sam Kenji", email: "samisam@lacomté.com", password: "azerty")
degolas = User.create!(name: "Degolas Plindhwil", email: "degolaszebest@elf.com", password: "azerty")
gordon = User.create!(name: "Trash Gordon", email: "gordon@trash.com", password: "azerty")
​
puts "Creating teams..."
team_flammes = Team.create!(
  owner:         glandalf,
  name:          "Tout feux tout flammes",
  descprition:       ", 44000 Nantes",
  success_rate:         4,
  price_per_day: 200
)
​
file = File.open(Rails.root.join("db/seeds/restaurants/resto-izakaya.jpg"))
restaurant.photo.attach(io: file, filename: "resto.jpg", content_type: "image/jpeg")
​​
puts "Creating bookings..."
Booking.create!(
  renter:      alex,
  restaurant:  resto_izakaya,
  starts_on:   "2023-06-01",
  ends_on:     "2023-06-10",
  total_price: 1_110,
  status:      "accepted"
)
​
puts "Finished!"
