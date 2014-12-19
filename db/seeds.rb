# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create([{name: 'Lakeshore Cafe', address: '111 Some Street', city: 'Storm Lake', state: 'IA', zip_code: '50588'}, 
	{name: 'Pizza Hut', address: '111 Some Street', city: 'Storm Lake', state: 'IA', zip_code: '50588'}])