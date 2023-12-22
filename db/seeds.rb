# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
Room.destroy_all
Hotel.destroy_all
User.destroy_all

user = User.create!(email: "pierre@gmail.com", password: "azerty")

cosy_hotel = Hotel.create!(name: "Cosy Hotel", address: "Av. 24 de Julho 49, 1200-479 Lisboa, Portugal")
cosy_hotel_room1 = Room.create!(
  price_per_night: 70,
  capacity: 2,
  hotel_id: cosy_hotel.id,
  name: "Bon dia",
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  picture: "https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 80,
  capacity: 2,
  hotel_id: cosy_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Cosy room",
  picture: "https://images.unsplash.com/photo-1594560913036-d15f23f8a91c?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 100,
  capacity: 3,
  hotel_id: cosy_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Confort room",
  picture: "https://images.unsplash.com/photo-1594560913095-8cf34bab82ad?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 150,
  capacity: 4,
  hotel_id: cosy_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Verde room",
  picture: "https://images.unsplash.com/photo-1600210491305-7396500b5b31?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 200,
  capacity: 4,
  hotel_id: cosy_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Noche room",
  picture: "https://images.unsplash.com/photo-1629794226066-349748040fb7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Booking.create!(
  starts_at: "Mon, 14 Jun 2023",
  ends_at: "Mon, 21 Jun 2023",
  user_id: user.id,
  room_id: cosy_hotel_room1.id
)

next_hotel = Hotel.create!(name: "Next Level Premium Hotels", address: "Rua Do Conde De Redondo N16, Lisbon 1150-186 Portugal")
next_hotel_room1 = Room.create!(
  price_per_night: 150,
  capacity: 3,
  hotel_id: next_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Trio room",
  picture: "https://images.unsplash.com/photo-1632210702485-e1841e30752a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 100,
  capacity: 2,
  hotel_id: next_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Standard room",
  picture: "https://plus.unsplash.com/premium_photo-1674676471380-1258cb31b3ac?q=80&w=2009&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 170,
  capacity: 3,
  hotel_id: next_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Good room",
  picture: "https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 250,
  capacity: 4,
  hotel_id: next_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Delux room",
  picture: "https://images.unsplash.com/flagged/photo-1573168710865-2e4c680d921a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 260,
  capacity: 4,
  hotel_id: next_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "King room",
  picture: "https://images.unsplash.com/photo-1560185893-a55cbc8c57e8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Booking.create!(
  starts_at: "Sun, 21 May 2023",
  ends_at: ", Sun 28 Jun 2023",
  user_id: user.id,
  room_id: next_hotel_room1.id
)

baixa_hotel = Hotel.create!(name: "Hotel Da Baixa", address: "Rua da Prata 231, Lisbon 1100-417 Portugal")
baixa_hotel_room1 = Room.create!(
  price_per_night: 600,
  capacity: 4,
  hotel_id: baixa_hotel.id,
  name: "Quatro room",
  picture: "https://images.unsplash.com/photo-1598928636135-d146006ff4be?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 250,
  capacity: 2,
  hotel_id: baixa_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Double room",
  picture: "https://images.unsplash.com/photo-1618221118493-9cfa1a1c00da?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 370,
  capacity: 3,
  hotel_id: baixa_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Mix room",
  picture: "https://images.unsplash.com/photo-1616486029423-aaa4789e8c9a?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 380,
  capacity: 3,
  hotel_id: baixa_hotel.id,
  name: "Triple room",
  picture: "https://images.unsplash.com/photo-1571508601891-ca5e7a713859?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)
Room.create!(
  price_per_night: 260,
  capacity: 2,
  hotel_id: baixa_hotel.id,
  description: "Room in the Cozy Hostel hotel close to public transport: tram, bus, bike... 5 minutes on foot. The hotel is ideally located in the Alfama district.",
  name: "Duo room",
  picture: "https://images.unsplash.com/photo-1585821569331-f071db2abd8d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Booking.create!(
  starts_at: "Wed, 15 Feb 2023",
  ends_at: ", Wed 22 Jun 2023",
  user_id: user.id,
  room_id: baixa_hotel_room1.id
)
