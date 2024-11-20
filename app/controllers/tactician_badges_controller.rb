class TacticianBadgesController < ApplicationController

  def index
    @tactician_badges = TacticianBadges.all
  end

  def show
    @tactician_badge = find_tactician_badge
  end


  private

  def tactician_badges_params
    params.require(:tactician_badges).permit(:tactician, :badge)
  end

  def find_tactician_badge
    TacticianBadge.find(params[:id])
  end
end
