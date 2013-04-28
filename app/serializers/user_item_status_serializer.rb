class UserItemStatusSerializer < ActiveModel::Serializer
  attributes :status
  has_one :item, :user
end
