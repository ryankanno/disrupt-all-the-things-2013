class Item < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:lonlat, RGeo::Geographic.spherical_factory(:srid => 4326))
  attr_accessible :heading, :description, :lonlat, :photo, :tag_list, :status, :uid
  mount_uploader :photo, ItemUploader

  acts_as_taggable
  acts_as_taggable_on :tags

  has_many :user_item_statuses  

  after_initialize :init_values

  scope :nearby_to,
    lambda { |latitude, longitude, max_distance|
      where("ST_DWithin(lonlat, ?, ?)", 
            Item.rgeo_factory_for_column(:lonlat).point(longitude, latitude), max_distance)
    }

  def init_values
    self.status = ItemStatus::AVAILABLE
    self.uid = Digest::MD5.hexdigest((Time.now.to_i + Random.rand(999999999)).to_s)
  end

  def recycled
    self.status = ItemStatus::RECYCLED
    self.save!
  end

  def user_status=(status)
    @user_status = status
  end
end
