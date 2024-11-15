class DaysController < ApplicationController

  def index
    @days = Day.all

  end #index end
end #class end
