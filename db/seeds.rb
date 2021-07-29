# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Passenger.destroy_all
Taxi.destroy_all
Ride.destroy_all

puts "Creating passengers ..."
p1 = Passenger.create(name: 'Buggs Bunny', age: 6)
p2 = Passenger.create(name: 'Daffy Duck', age: 5)
p3 = Passenger.create(name: 'Tweet Bird', age: 8)

puts "Creating taxis ..."
c1 = Taxi.create(cab_number: 6564, color: 'Black')
c2 = Taxi.create(cab_number: 8392, color: 'Yellow')

puts "Creating rides ..."
r1 = Ride.create(taxi_id: c1.id, passenger_id: p1.id)
r2 = Ride.create(taxi_id: c2.id, passenger_id: p3.id)