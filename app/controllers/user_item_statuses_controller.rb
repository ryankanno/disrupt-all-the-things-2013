class UserItemStatusesController < ApplicationController

  def update
    item_status = current_user.user_item_statuses.where(item_id: params[:item_id]).first
    if item_status
      item_status.update_attribute(:status, params[:status])
      render json: item_status
    else
      render(json: {}, status: :not_found)
    end
  end

end
