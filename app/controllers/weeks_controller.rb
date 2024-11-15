class WeeksController < ApplicationController

  def index
    @weeks = Week.all
  end

  def show
    @week = find_week
  end


  private

  def week_params
    params.require(:week).permit(:name, :tactician, :day)
  end

  def find_week
    Week.find(params[:id])
  end

end
