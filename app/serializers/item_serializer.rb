class ItemSerializer < ActiveModel::Serializer
  attributes :id, :heading, :description, :photo_url, :latitude, :longitude

  def photo_url
    "#{object.photo.url}"
  end

  def latitude
    "#{object.lonlat.y}"
  end

  def longitude
    "#{object.lonlat.x}"
  end
end
