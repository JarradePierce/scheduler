module DaysOfWeekHelper

  def create_days_of_week(week)
    days = Day.create([
      {day_name: "Monday", abbreviation: "Mon", day_date: "11/11/2024", is_weekend: false, day_position: 1, week_id: week},

      {day_name: "Tuesday", abbreviation: "Tues", day_date: "11/12/2024", is_weekend: false, day_position: 2, week_id: week},

      {day_name: "Wednesday", abbreviation: "Wed", day_date: "11/13/2024", is_weekend: false, day_position: 3, week_id: week},

      {day_name: "Thursday", abbreviation: "Thur", day_date: "11/14/2024", is_weekend: false, day_position: 4, week_id: week},

      {day_name: "Friday", abbreviation: "Fri", day_date: "11/15/2024", is_weekend: false, day_position: 5, week_id: week},

      {day_name: "Saturday", abbreviation: "Sat", day_date: "11/16/2024", is_weekend: true, day_position: 6, week_id: week},

      {day_name: "Sunday", abbreviation: "Sun", day_date: "11/17/2024", is_weekend: true, day_position: 7, week_id: week}
      ])
  end

end
