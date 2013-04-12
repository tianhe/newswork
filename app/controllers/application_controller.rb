class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    unless current_user
      redirect_to '/users/sign_in'
    end
  end
end
