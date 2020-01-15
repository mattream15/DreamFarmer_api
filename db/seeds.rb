# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CannabisPlant.create([
{ species: "Cannabis indica", varietyName: "Strawberry Banana", numberOfSeeds: 1 },
{ species: "Cannabis indica", varietyName: "Dark Star", numberOfSeeds: 2 },
{ species: "Cannabis indica", varietyName: "Kosher Kush", numberOfSeeds: 3 },
{ species: "Cannabis sativa", varietyName: "Ghost Train Haze", numberOfSeeds: 4 },
{ species: "Cannabis sativa", varietyName: "Sour Diesel", numberOfSeeds: 5 },
{ species: "Cannabis sativa", varietyName: "Casey Jones", numberOfSeeds: 6 },
{ species: "Hybrid", varietyName: "Cannatonic", numberOfSeeds: 7 },
{ species: "Hybrid", varietyName: "Three Blue Kings", numberOfSeeds: 8 },
{ species: "Hybrid", varietyName: "Larry Bird Kush", numberOfSeeds: 9 },
{ species: "Hybrid", varietyName: "Pineapple Express", numberOfSeeds: 10 }
])