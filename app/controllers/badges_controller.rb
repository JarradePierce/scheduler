class BadgesController < ApplicationController

  def index
    @badges = Badge.all
  end

  def show
    @badge = find_badge
  end


  private

  def badges_params
    params.require(:badges).permit(:name, :date_attained)
  end

  def find_badge
    Badge.find(params[:id])
  end

end
