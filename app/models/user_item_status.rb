class UserItemStatus < ActiveRecord::Base
  attr_accessible :user, :item, :status, :item_id, :user_id
  belongs_to :user
  belongs_to :item

  INTERESTED = "interested"
  OMW = "on my way"
end
