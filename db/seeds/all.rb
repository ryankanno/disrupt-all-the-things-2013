include FactoryGirl::Syntax::Methods

minLat = 45.75404451
maxLat = 35.492151803709525
minLng = -65.99415772
maxLng = -75

10000.times do
  rng = Random.new(seed)
  lat = minLat + rng.rand * (maxLat - minLat)
  lng = minLng + rng.rand * (maxLng - minLng)
end
