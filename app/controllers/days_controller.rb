class DaysController < ApplicationController

  def index
    @days = Day.all
    @tacticians_container = []

    @days.each do |day|
      day.tacticians.each do |tactician|
        @tacticians_container.unshift(tactician)
      end
    end
  end #index end

  def show
    @day = find_day
    @tacticians = @day.tacticians
  end


  private

  def day_params
    params.require(:day).permit(:day_name, :abbreviation, :week_of_date, :is_weekend, :day_position)
  end

  def find_day
    Day.find(params[:id])
  end

end #class end
