# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GrowRoom.create([{ light_source: "HID", nutrient: "General Hydroponics Organics", relative_humidity: "40%-45%", temperature: "68-77 ºF", pH: "5.5-6.5" }])

CannabisPlant.create([
{ species: "Cannabis indica", variety_name: "Strawberry Banana", number_of_seeds: 1, grow_room_id:1 },
{ species: "Cannabis indica", variety_name: "Dark Star", number_of_seeds: 2, grow_room_id:1  },
{ species: "Cannabis indica", variety_name: "Kosher Kush", number_of_seeds: 3, grow_room_id:1  },
{ species: "Cannabis sativa", variety_name: "Ghost Train Haze", number_of_seeds: 4, grow_room_id:1  },
{ species: "Cannabis sativa", variety_name: "Sour Diesel", number_of_seeds: 5, grow_room_id:1  },
{ species: "Cannabis sativa", variety_name: "Casey Jones", number_of_seeds: 6, grow_room_id:1  },
{ species: "Hybrid", variety_name: "Cannatonic", number_of_seeds: 7, grow_room_id:1  },
{ species: "Hybrid", variety_name: "Three Blue Kings", number_of_seeds: 8, grow_room_id:1  },
{ species: "Hybrid", variety_name: "Larry Bird Kush", number_of_seeds: 9, grow_room_id:1  },
{ species: "Hybrid", variety_name: "Pineapple Express", number_of_seeds: 10, grow_room_id:1  }
])