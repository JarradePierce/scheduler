class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = find_schedule
  end


  private

  def schedule_params
    params.require(:schedule).permit(:tactician_id, :day_id, :name)
  end

  def find_schedule
    Schedule.find(params[:id])
  end

end
