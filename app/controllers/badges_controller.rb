class BadgesController < ApplicationController

  def index
    @badges = Badge.all
  end

  def show
    @badge = find_badge
  end

end
