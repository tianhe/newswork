class FeedController < ApplicationController
  before_filter :require_user

  def show
    @user_interests = current_user.user_interests
  end

  def reload
    current_user.interests.each{ |interest| NewsSourceManager.new('bitly').create_links(interest) }
    redirect_to action: 'show'
  end

end