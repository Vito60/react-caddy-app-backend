# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pro = Pro.new(first_name: "Rory", last_name: "Mcllroy", hometown: "Holywood", home_state: "Northern Ireland", age: "30")
pro.save 

pro = Pro.new(first_name: "Dustin", last_name: "Johnson", hometown: "Columbia", home_state: "South Carolina", age: "35")
pro.save 

pro = Pro.new(first_name: "Rickie", last_name: "Fowler", hometown: "Murrieta", home_state: "California", age: "31")
pro.save 

pro = Pro.new(first_name: "Jordan", last_name: "Spieth", hometown: "Dallas", home_state: "Texas", age: "26")
pro.save 

pro = Pro.new(first_name: "Bubba", last_name: "Watson", hometown: "Bagdad", home_state: "Florida", age: "41")
pro.save

club = Club.new(club_type: "Driver", brand: "Taylormade", model: "SIM", loft: "9" )
club.save 

club = Club.new(club_type: "3 Wood", brand: "Taylormade", model: "SIM", loft: "15" )
club.save 

club = Club.new(club_type: "5 Wood", brand: "Taylormade", model: "SIM", loft: "18" )
club.save 

club = Club.new(club_type: "Wedge", brand: "Taylormade", model: "Milled Grind 2", loft: "60" )
club.save 

club = Club.new(club_type: "Wedge", brand: "Taylormade", model: "Milled Grind 2", loft: "64" )
club.save 

club = Club.new(club_type: "Putter", brand: "Taylormade", model: "Spider", loft: "3.5" )
club.save 

club = Club.new(club_type: "Driver", brand: "Cobra", model: "Speedzone", loft: "10.5")
club.save 

club = Club.new(club_type: "Putter", brand: "Scotty Cameron", model: "Newport 2", loft: "3" )
club.save 

club = Club.new(club_type: "Driver", brand: "Titleist", model: "TS3", loft: "10.5")
club.save

club = Club.new(club_type: "3 Wood", brand: "Titleist", model: "915F", loft: "15")
club.save

club = Club.new(club_type: "Hybrid", brand: "Titleist", model: "818H2", loft: "21")
club.save

club = Club.new(club_type: "Driver", brand: "Ping", model: "G40", loft: "9")
club.save
 
club = Club.new(club_type: "5 Wood", brand: "Ping", model: "G410", loft: "17.5")
club.save

club = Club.new(club_type: "Wedge", brand: "Ping", model: "Glide 2.0", loft: "60")
club.save

club = Club.new(club_type: "Putter", brand: "Ping", model: "Anser Prototype", loft: "4.5")
club.save

Pro.find_by_id(1).update(club_ids: [1, 2, 3])
Pro.find_by_id(2).update(club_ids: [1, 2, 3, 4, 5, 6])
Pro.find_by_id(3).update(club_ids: [7, 8])
Pro.find_by_id(4).update(club_ids: [9, 10, 11])
Pro.find_by_id(5).update(club_ids: [12, 13, 14, 15])