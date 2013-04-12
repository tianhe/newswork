class Api::InterestsController < ApplicationController
  def update
    interest = Interest.find(params[:id])
    NewsSourceManager.new('bitly').create_links(interest)
  end
end