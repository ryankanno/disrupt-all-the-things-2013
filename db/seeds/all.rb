include FactoryGirl::Syntax::Methods
require 'ffaker'

minLat = 45.75404451
maxLat = 35.492151803709525
minLng = -65.99415772
maxLng = -75

factory = Item.rgeo_factory_for_column(:lonlat)

Parallel.map(1..50, :in_processes => 8) do |one|
  ActiveRecord::Base.connection.reconnect!
  rng = Random.new
  lat = minLat + rng.rand * (maxLat - minLat)
  lng = minLng + rng.rand * (maxLng - minLng)
  item = Item.new
  item.heading = Faker::Product.product
  item.description = Faker::HipsterIpsum.words.join
  item.lonlat = factory.point(lng, lat)
  item.tag_list = (0..10).collect{ Faker::Product.product }.join(',')
  item.save
end

User.create(first_name: "Ryan", last_name: "Kanno", provider: "facebook", uid: "123",
            access_token: "BAAHPZAwZB5oJgBAOySvYzslsfXnJlXb7t6X2g5xRGbJz2TudCaaMAvNu5TpKj8IZAP5fWKeCnW0oYsPZACy8dqI6iS8wfMN1gTC7yiaAZAIGoMjr0k67VKPJuJuPqQhgWKaBjv0DgHVZBNhxT9sggwZBP3IoJm0zRXwQhhA5gukwRGWkmmLe9cZAajdcACZCLkBcpT5t8rRArSIbspSGmMZBxL")
