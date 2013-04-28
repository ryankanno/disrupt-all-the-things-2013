class Item < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:lonlat, RGeo::Geographic.spherical_factory(:srid => 4326))
  attr_accessible :heading, :description, :lonlat, :photo, :tag_list, :status
  mount_uploader :photo, ItemUploader

  acts_as_taggable
  acts_as_taggable_on :tags

  scope :nearby_to,
    lambda { |latitude, longitude, max_distance|
      where("ST_DWithin(lonlat, ?, ?)", 
            self.rgeo_factory_for_column(:lonlat).point(longitude, latitude), max_distance)
    }

  def initialize
    @status = ItemStatus::AVAILABLE
    super
  end

  def recycled
    self.status = ItemStatus::RECYCLED
    self.save!
  end

end
