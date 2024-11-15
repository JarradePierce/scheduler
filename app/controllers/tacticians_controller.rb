class TacticiansController < ApplicationController

  def index
    @tacticians = Tactician.all
  end

  def show
    @tactician = find_tactician
  end

  # private find methods
  private

  def tactician_params
    params.require(:tactician).permit(:name, :contact_info, :trained, :is_available)
  end

  def find_tactician
    Tactician.find(params[:id])
  end

end
