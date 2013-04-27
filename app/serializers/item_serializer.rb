class ItemSerializer < ActiveModel::Serializer
  attributes :id, :heading, :description, :photo_url

  def photo_url
    "#{object.photo.url}"
  end
end
