class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in @user
    end
    redirect_to users_path
  end
end
