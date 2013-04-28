class UserItemStatusesController < ApplicationController

  def update
    item_id = params[:item_id]
    item_status = current_user.user_item_statuses.where(item_id: item_id).first
    if item_status
      item_status.update_attribute(:status, params[:status])

      UserItemStatus.where(item_id: item_id).each do |status|
        TWILIO.account.sms.messages.create(
          :from => "+14692511904",
          :to => "+1#{status.user.phone_number}",
          :body => "rio://#{item_status.user.uid}"
        )
      end

      render json: item_status
    else
      render(json: {}, status: :not_found)
    end
  end

end
