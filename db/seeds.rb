# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

weeks = Week.create([
  {name: "11/11/24"},
  {name: "11/18/24"}
])

days = Day.create([
  {day_name: "Monday", abbreviation: "Mon", day_date: "11/11/2024", is_weekend: false, day_position: 1, week_id: 1},

  {day_name: "Tuesday", abbreviation: "Tues", day_date: "11/12/2024", is_weekend: false, day_position: 2, week_id: 1},

  {day_name: "Wednesday", abbreviation: "Wed", day_date: "11/13/2024", is_weekend: false, day_position: 3, week_id: 1},

  {day_name: "Thursday", abbreviation: "Thur", day_date: "11/14/2024", is_weekend: false, day_position: 4, week_id: 1},

  {day_name: "Friday", abbreviation: "Fri", day_date: "11/15/2024", is_weekend: false, day_position: 5, week_id: 1},

  {day_name: "Saturday", abbreviation: "Sat", day_date: "11/16/2024", is_weekend: true, day_position: 6, week_id: 1},

  {day_name: "Sunday", abbreviation: "Sun", day_date: "11/17/2024", is_weekend: true, day_position: 7, week_id: 1}
  ]) #end day create

tactician = Tactician.create([
  {name: "jay", contact_info: "contact", is_available: true},
  {name: "tony", contact_info: "contact", is_available: true},
  {name: "jeff", contact_info: "contact", is_available: true},
  {name: "rav", contact_info: "contact", is_available: true},
])# end create tacticians

schedules = Schedule.create([
  {tactician_id: 1, day_id: 1, name: "Foster City"},
  {tactician_id: 1, day_id: 1, name: "San Francisco"},
  {tactician_id: 3, day_id: 2, name:"Las Vegas"}
])# end create schedule

badges = Badge.create([
  {name: "ZR1", date_attained: Date.today},
  {name: "ZR2", date_attained: Date.today},
  {name: "ZR3", date_attained: Date.today}
]) # end badges create

tactician_badges = TacticianBadge.create([
  {tactician_id: 1, badge_id: 1},
  {tactician_id: 2, badge_id: 2},
  {tactician_id: 3, badge_id: 3}
])
