class InterestsController < ActionController::Base
  def index
    @interests = Interest.all
  end
end