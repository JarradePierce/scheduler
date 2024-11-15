# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

day = Day.create([
  {day_name: "Monday", abbreviation: "Mon", week_of_date: "11/13/2024", is_weekend: false, day_position: 1},
  {day_name: "Tuesday", abbreviation: "Tues", week_of_date: "11/13/2024", is_weekend: false, day_position: 2},
  {day_name: "Wednesday", abbreviation: "Wed", week_of_date: "11/13/2024", is_weekend: false, day_position: 3},
  {day_name: "Thursday", abbreviation: "Thur", week_of_date: "11/13/2024", is_weekend: false, day_position: 4},
  {day_name: "Friday", abbreviation: "Fri", week_of_date: "11/13/2024", is_weekend: false, day_position: 5},
  {day_name: "Saturday", abbreviation: "Sat", week_of_date: "11/13/2024", is_weekend: true, day_position: 6},
  {day_name: "Sunday", abbreviation: "Sun", week_of_date: "11/13/2024", is_weekend: true, day_position: 7},
  ])

tactician = Tactician.create([
  {name: "jay", contact_info: "contact", trained: false, is_available: true},
  {name: "tony", contact_info: "contact", trained: false, is_available: true},
  {name: "jeff", contact_info: "contact", trained: false, is_available: true},
  {name: "rav", contact_info: "contact", trained: false, is_available: true},
  ])# end create tacticians

week = Week.create(name: "11/11/24", tactician_id: 1, day_id: 1)
