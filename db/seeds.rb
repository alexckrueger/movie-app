# Actor.create({first_name: "Big", last_name: "Bad", known_for: "Wolf"})
# Actor.create({first_name: "Mary", last_name: "Had a", known_for: "Little Lamb"})

require 'ffaker'

# 10.times do 
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

1.times do
  Movie.create(title: FFaker::Movie.title, year: FFaker::Vehicle.year, plot: FFaker::CheesyLingo.paragraph)
end