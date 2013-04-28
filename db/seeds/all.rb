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

item6 = Item.new
item6.heading = "Glass Table with Metal Iron Frame"
item6.description = "The glass is intact and not cracked.
The base is 2ft high, and the square top face is 20inches on each side."
item6.photo = open("http://images.craigslist.org/3Ke3M33Jb5Ld5Ec5H5d4l84867160437d1eeb.jpg")
item6.lonlat = factory.point(-73.991332, 40.752735)
item6.tag_list = "table, furniture"
item6.save

item8 = Item.new
item8.heading = "Free computer desk"
item8.description = "Free desk. Decent condition. Would probably need a truck or van to take it unless you can break it down. I'm not sure how. Can only separate it into 2 parts right now top and bottom. Any questions feel free to reach out."
item8.photo = open("http://images.craigslist.org/3Jc3N43He5La5N25M3d4r0992de4d3b7a1a04.jpg")
item8.lonlat = factory.point(-73.987319, 40.749923)
item8.tag_list = "table, computer, desk"
item8.save

item9 = Item.new
item9.heading = "free shipping/moving boxes"
item9.description = "1 small, 4 medium, 2 large. Taken apart so they will need to be re-taped"
item9.photo = open("http://images.craigslist.org/3Ga3I43Lf5G55Kc5J5d4r9d132c71704e1a99.jpg")
item9.lonlat = factory.point(-73.991375, 40.74755)
item9.tag_list = "boxes"
item9.save

item10 = Item.new
item10.heading = "Fridgidaire electric range/oven"
item10.description = "Vintage fridgidaire range/oven at curb ready for pickup at curb! 174 Taunton Hill Road, Newtown. Email for additional details. Clean, we think it works but needs 220v line and we have gas. Got this item off CL for free but these vintage (clean) appliances usually go for a couple hundred dollars. It has an oven on the right, and a large storage compartment on left. there is another storage drawer at the bottom. It's in very good condition and wish we could have used it. Very heavy."
item10.photo = open("http://images.craigslist.org/3E93Lb3N35E85Ke5J4d4r02a36647de721ca4.jpg")
item10.lonlat = factory.point(-73.996353, 40.747468)
item10.tag_list = "oven, frigidaire" 
item10.save

item11 = Item.new
item11.heading = "Gizmo head pillow" 
item11.description = "This thing is super sweet but I'm moving and trying to narrow down the things I'm taking with."
item11.photo = open("http://images.craigslist.org/3E43Fe3L85N95M25J5d4r8e2574e4732616da.jpg")
item11.lonlat = factory.point(-73.995838, 40.744656)
item11.tag_list = "gizmo, head" 
item11.save

item12 = Item.new
item12.heading = "3 in 1 Octogan Table" 
item12.description = "3 in 1 Octogan Table - Bumper Pool, Poker, Wood Top - in good condition, come take it away..."
item12.photo = open("http://images.craigslist.org/3Ea3Lb3H75I65F85J9d4r78f47887c3301c4b.jpg")
item12.lonlat = factory.point(-73.996611, 40.741795)
item12.tag_list = "table" 
item12.save

item14 = Item.new
item14.heading = "Leather sofa - needs work" 
item14.description = "Free leather sofa. Solid frame. Very comfortable. BUT NEEDS UPHOLSTERY or PATCHING. Good for someone who can fix it up. Text me to schedule pickup"
item14.photo = open("http://images.craigslist.org/3L93Nd3H75I85G75Jfd4r65a4c7edd8e6134b.jpg")
item14.lonlat = factory.point(-73.991976, 40.744136)
item14.tag_list = "sofa, couch, leather" 
item14.save

item15 = Item.new
item15.heading = "Queen Size Mattress" 
item15.description = "Queen size mattress in good condition.
No bed bugs."
item15.photo = open("http://images.craigslist.org/3Ea3F23M65G45F65Had4r3240c147ec4f1869.jpg")
item15.lonlat = factory.point(-73.989369, 40.743819)
item15.tag_list = "queen, bed, mattress" 
item15.save

item16 = Item.new
item16.heading = "Full size Futon Frame - Dark Brown Polished Wood - NO BEDBUGS"
item16.description = "I bought the frame and futon and slept on it flat. I never folded it, but I think it does fold. It's yours if you'd like it. Ready for pick up."
item16.photo = "http://images.craigslist.org/3Ec3F43Jf5I95F35H3d4p8594cb14c5f91ee8.jpg"
item16.lonlat = factory.point(-73.990366, 40.742445)
item16.tag_list = "bed, frame, wood"
item16.save

item17 = Item.new
item17.heading = "FREE Sony TV and Remote Control with TV Stand"
item17.description = "TV is in perfect working condition, I still use it everyday.

It is yours if you will haul it from my apartment.

Thanks!"
item17.photo = "http://images.craigslist.org/3I13Ld3J35I25H85M8d4p60858ddbe31615b9.jpg"
item17.lonlat = factory.point(-73.987716, 40.74329)
item17.tag_list = "tv, television, sony"
item17.save

item18 = Item.new
item18.heading = "Microsoft SQL Server 6.5"
item18.description = "This comprehensive guide, written by Microsoft insider and SQL guru Ron Soukup, provides an authoritative conceptual and architectural overview and advice on installation, administration, and programming with SQL and Transact-SQL. Soukup also provides examples and candid answers to frequently asked questions gleaned from his years of service as general manager of the SQL Server development group at Microsoft. This book is for MIS professionals in large companies, vertical applications developers, custom solution providers, and anyone else working with mid-level to high-end relational databases."
item18.photo = open("http://images.craigslist.org/3G33F63Hb5N85Ga5F5d4od3b3a4605ab11f8a.jpg")
item18.lonlat = factory.point(-73.989691, 40.743786)
item18.tag_list = "msft, microsoft, sql"
item18.save

item19 = Item.new
item19.heading = "Free roll of our New Scott® Extra Soft Tissue "
item19.description = "Here is a special offer directly from Scott Tissue - Today you can grab a completely free roll of New Scott® Extra Soft Tissue!"
item19.photo = open("http://images.craigslist.org/3Eb3K23Na5Fb5Hd5M4d4o687f47b8c9021a00.jpg")
item19.lonlat = factory.point(-73.992126, 40.743794)
item19.tag_list = "toilet paper"
item19.save

item20 = Item.new
item20.heading = "Xerox 8400 Printer Free"
item20.description = "If you don't know what this is, you probably don't want it.

I picked up this printer for free from a law firm that was moving. I was told that it worked when removed from service, and that the firm had kept it as a spare after upgrading, and it sat in their printer room for a few years. When I got it home I discovered it had no toner cartridges and the front door was jammed. I unjammed the door, but it won' t latch and it is closed with a piece of tape. It powers up and says no toner but I was reluctant to spend a hundred bucks on toner cartridges just to find out something else, like an imaging unit, is toast. (I had a 6250, so I know all about Xerox imaging units.) Also, the photo is generic, not from this one.

It looks like a plastic piece needs to be moved for the door to close, but I'm not motivated to download the service manual and fix it, since I'm not using it.

So if you want this for parts, because you have an 8400, great. Similarly, if your 8400 died and you want to move toner cartridges to this one as an experiment, go for it. Otherwise, this is not the printer for you. Trust me on that.

If you want it, send me your name, phone number, time you can get it, how you propose to move a 60lb printer, and why you think you want this.

If nobody responds in a day or so it is going to the curb for sanitation."
item20.photo = open("http://images.craigslist.org/3F13I13L15N35G35Had4n71c97f7f1d3e12a3.jpg")
item20.lonlat = factory.point(-73.993456, 40.743103)
item20.tag_list = "printer"
item20.save

item21 = Item.new
item21.heading = "Older Edition Finance Textbooks for College Students"
item21.description = "Offering older edition textbooks to Students ONLY."
item21.photo = open("http://images.craigslist.org/3Ec3F43Me5N95E35H5d4j0fe1be475f011373.jpg")
item21.lonlat = factory.point(-73.995173, 40.742144)
item21.tag_list = "books"
item21.save

item22 = Item.new
item22.heading = "Toaster Oven"
item22.description = "Kenmore Toaster over needs a new home. Reply with a phone number & why you need a toaster oven. Can be a porch pick up."
item22.photo = open("http://images.craigslist.org/3M53Fc3N45N75E25M5d4r007512d12ca41d42.jpg")
item22.lonlat = factory.point(-73.99557, 40.741396)
item22.tag_list = "toaster"
item22.save

User.create(first_name: "Ryan", last_name: "Kanno", provider: "facebook", uid: "123",
            access_token: "BAAHPZAwZB5oJgBAOySvYzslsfXnJlXb7t6X2g5xRGbJz2TudCaaMAvNu5TpKj8IZAP5fWKeCnW0oYsPZACy8dqI6iS8wfMN1gTC7yiaAZAIGoMjr0k67VKPJuJuPqQhgWKaBjv0DgHVZBNhxT9sggwZBP3IoJm0zRXwQhhA5gukwRGWkmmLe9cZAajdcACZCLkBcpT5t8rRArSIbspSGmMZBxL")
