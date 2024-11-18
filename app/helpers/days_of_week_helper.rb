module DaysOfWeekHelper

  def check_if_monday
    if Date.today.monday?
      true
    else
      false
    end
  end

  def create_days_of_week(week)
    start_day = Date.today
    
    days = Day.create([
      {day_name: "Monday", abbreviation: "Mon", day_date: start_day, is_weekend: false, day_position: 1, week_id: week},

      {day_name: "Tuesday", abbreviation: "Tues", day_date: start_day + 1, is_weekend: false, day_position: 2, week_id: week},

      {day_name: "Wednesday", abbreviation: "Wed", day_date: start_day + 2, is_weekend: false, day_position: 3, week_id: week},

      {day_name: "Thursday", abbreviation: "Thur", day_date: start_day + 3, is_weekend: false, day_position: 4, week_id: week},

      {day_name: "Friday", abbreviation: "Fri", day_date: start_day + 4, is_weekend: false, day_position: 5, week_id: week},

      {day_name: "Saturday", abbreviation: "Sat", day_date: start_day + 5, is_weekend: true, day_position: 6, week_id: week},

      {day_name: "Sunday", abbreviation: "Sun", day_date: start_day + 6, is_weekend: true, day_position: 7, week_id: week}
      ])
  end

end
