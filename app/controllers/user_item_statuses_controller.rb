class UserItemStatusesController < ApplicationController

  def update
    item_id = params[:item_id]
    item_status = UserItemStatus.where(item_id: params[:id], user_id: current_user.id).first
    unless item_status
      item_status = UserItemStatus.new(:item_id => params[:id])
      current_user.user_item_statuses << item_status
    end

    item_status.update_attribute(:status, params[:status])

    if UserItemStatus::OMW == params[:status]
      ["8082306540", "8082323326", "8082565013"].each do |number|
        TWILIO.account.sms.messages.create(
          :from => "+14692511904",
          :to => "+1#{number}",
          :body => "rio://reuseon"
        )
      end
    end

    render json: item_status
  end
end
