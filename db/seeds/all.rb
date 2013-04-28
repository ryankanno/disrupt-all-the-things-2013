#!/bin/env ruby
# encoding: utf-8
include FactoryGirl::Syntax::Methods
require 'ffaker'

factory = Item.rgeo_factory_for_column(:lonlat)

item3 = Item.new
item3.heading = "Ceramic Heater with Adjustable Thermostat w/ FREE Extension Cord"
item3.description = "Lasko's #754200 heater offers powerful heat in a small package suitable for under a desk or even table-top. Adjustable Thermostat Control for Personalized Comfort
Built-In Safety Features
1500 Watts of Comforting Warmth
3 Quiet Settings: High Heat, Low Heat and Fan Only
Convenient Carry Handle
E.T.L. listed
6″L x 7″W x 9.2″H"
item3.photo = open("http://images.craigslist.org/3K43Ib3Hb5Ia5K55H7d4rc82bac53a34a17e0.jpg")
item3.lonlat = factory.point(-73.978119, 40.745717)
item3.tag_list = "heater, thermostat"
item3.save

item4 = Item.new
item4.heading = "giant plastic chess pieces"
item4.description = "free to a good home
full garden lawn chess set (2' tall plastic chess pieces) but there are no white pieces only black, it's not that the white ones are missing, it's just that both sides of the board are black ... so you can either paint one set another color or ... as a friend suggested, dress one side up with beaded necklaces or stickers or hats or something."
item4.photo = open("http://images.craigslist.org/3F83Me3I55Fe5J15Mfd4r9904f1ff947811da.jpg")
item4.lonlat = factory.point(-73.983629, 40.749664)
item4.tag_list = "chess, lawn"
item4.save

User.create(first_name: "Ryan", last_name: "Kanno", provider: "facebook", uid: "123",
            access_token: "BAAHPZAwZB5oJgBAOySvYzslsfXnJlXb7t6X2g5xRGbJz2TudCaaMAvNu5TpKj8IZAP5fWKeCnW0oYsPZACy8dqI6iS8wfMN1gTC7yiaAZAIGoMjr0k67VKPJuJuPqQhgWKaBjv0DgHVZBNhxT9sggwZBP3IoJm0zRXwQhhA5gukwRGWkmmLe9cZAajdcACZCLkBcpT5t8rRArSIbspSGmMZBxL")
