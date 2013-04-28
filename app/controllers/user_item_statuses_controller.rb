class UserItemStatusesController < ApplicationController

  def create
    @user_item_status = UserItemStatus.new
    @user_item_status.save
  end

  def update
    @user_item_status = UserItemStatus.new
  end

end
