# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating restaurants..."
Restaurant.create!(
    name: "kebab",
    address: "rue oberkampf",
    category: "japanese"
)

Restaurant.create!(
    name: "pizzeria",
    address: "avenue parmentier",
    category: "japanese"
)
Restaurant.create!(
    name: "café",
    address: "rue saint maur",
    category: "japanese"
)
Restaurant.create!(
    name: "supermarché",
    address: "boulevard voltaire",
    category: "japanese"
)
Restaurant.create!(
    name: "l'épicerie",
    address: "rue vanneau",
    category: "japanese"
)

puts "All restaurants have been created : #{Restaurant.count}"
