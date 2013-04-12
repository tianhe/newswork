class UserInterestsController < ApplicationController
  before_filter :require_user

  def create
    interest = Interest.find_or_create_by_name(params[:name])
    interest.users << current_user
    NewsSourceManager.new('bitly').create_links(interest)

    redirect_to root_url
  end

  def destroy
    user_interest = UserInterest.find(params[:id])

    if user_interest.try(:user) == current_user
      user_interest.destroy
    end

    redirect_to root_url
  end

end