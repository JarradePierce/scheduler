class WeeksController < ApplicationController
include DaysOfWeekHelper

  def new
      @week = Week.new
  end # end new

  def index
    @weeks = Week.all
  end #end index

  def show
    @week = find_week
    @week_days = @week.days
  end # end show

  def create
    @week = Week.new(week_params)

    if check_if_monday
      respond_to do |format|
        if @week.save
          create_days_of_week(@week.id)
          format.html { redirect_to week_path(@week), notice: "Week created"}
            format.json { render :show, status: :created, location: @week}
          else
            format.html { redirect_to new_week_path(@week), notice: "Week creation failed"}
            format.json { render json: @week.errors, status: :unprocessable_entity }
          end #end @week.save
        end #end respond_to

      else
        format.html { redirect_to new_week_path(@week), notice: "Week creation failed"}
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end # end check if monday

    end #end create


  private

  def week_params
    params.require(:week).permit(:name, :tactician, :day)
  end

  def find_week
    Week.find(params[:id])
  end

end
