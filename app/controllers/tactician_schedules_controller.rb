class TacticianSchedulesController < ApplicationController

  def index
    @tactician_schedules = TacticianSchedule.all
  end

  def show
    @tactician_schedule = find_tactician_schedule
  end


  private

  def tactician_badges_params
    params.require(:tactician_schedules).permit(:tactician_id, :schedule_id)
  end

  def find_tactician_schedule
    TacticianSchedule.find(params[:id])
  end
end #class end
