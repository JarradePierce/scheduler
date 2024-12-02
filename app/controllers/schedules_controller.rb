class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = find_schedule
  end

  def create
    @schedule = Schedule.new(schedule_params)

     #add helper for assigning the new schedule to a week/day
      respond_to do |format|
        if @schedule.save
          create_schedule_path(@schedule.id)
          format.html { redirect_to schedule_path(@schedule), notice: "Schedule created"}
            format.json { render :show, status: :created, location: @schedule}
          else
            format.html { redirect_to new_schedule_path(@schedule), notice: "Schedule creation failed"}
            format.json { render json: @schedule.errors, status: :unprocessable_entity }
          end #end @schedule.save
        end #end respond_to
    end #end create


  private

  def schedule_params
    params.require(:schedule).permit(:tactician_id, :day_id, :name)
  end

  def find_schedule
    Schedule.find(params[:id])
  end

end
