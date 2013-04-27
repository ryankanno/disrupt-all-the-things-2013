class Item < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  attr_accessible :heading, :description, :latlon, :photo
  mount_uploader :photo, ItemUploader
end
