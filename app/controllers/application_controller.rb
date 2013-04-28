class ApplicationController < ActionController::Base
  protect_from_forgery :except => [:create, :update]

  def current_user
    User.first
  end
end
