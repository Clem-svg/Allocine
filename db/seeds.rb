# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do
  user = Movie.create!(
  name: Faker::Movie.title,
  year: Faker::Number.between(from: 1900, to: 2020),
  synopsis: Faker::Books::Lovecraft.paragraph(sentence_count: 2),
  director: Faker::Name.name,
  allocine_rating: rand(1.0..5.0).round(1),
  my_rating: nil,
  already_seen: false,
  genre: ["action", "horreur", "comédie", "drame"].sample()
  )
end
