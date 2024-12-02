class DaysController < ApplicationController

  def index
    @days = Day.all
    @tacticians_container = []

    @days.each do |day|
      day.schedules.each do |schedule|
        schedule.schedule_name
      end
    end
  end #index end

  def show
    @day = find_day
    @day.schedules.each do |schedule|
      schedule.tacticians
    end
  end


  private

  def day_params
    params.require(:day).permit(:day_name, :abbreviation, :week_of_date, :is_weekend, :day_position)
  end

  def find_day
    Day.find(params[:id])
  end

end #class end
