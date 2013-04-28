include FactoryGirl::Syntax::Methods
require 'ffaker'

minLat = 45.75404451
maxLat = 35.492151803709525
minLng = -65.99415772
maxLng = -75

factory = Item.rgeo_factory_for_column(:lonlat)

Parallel.map(1..1000, :in_processes => 8) do |one|
  ActiveRecord::Base.connection.reconnect!
  rng = Random.new
  lat = minLat + rng.rand * (maxLat - minLat)
  lng = minLng + rng.rand * (maxLng - minLng)
  item = Item.new
  item.heading = Faker::Product.product
  item.description = Faker::HipsterIpsum.words
  item.lonlat = factory.point(lng, lat)
  item.tag_list = (0..10).collect{ Faker::Product.product }.join(',')
  item.save
end
