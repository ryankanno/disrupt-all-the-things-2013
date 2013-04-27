class Item < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:lonlat, RGeo::Geographic.spherical_factory(:srid => 4326))
  attr_accessible :heading, :description, :lonlat, :photo
  mount_uploader :photo, ItemUploader

  acts_as_taggable
  acts_as_taggable_on :tags
end
