# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#--- UNIT 5 ---
s = Console.create(name: 'Playstation', company: 'Sony')
n = Console.create(name: 'Wii', company: 'Nintendo')
m = Console.create(name: 'XBox', company: 'Microsoft')

s.games.create(name: "Resident Evil", price: 20, genre: "Horror", release_year: 1996)
n.games.create(name: "Super Mario Bros", price: 5, genre: "Platformer", release_year: 1985)
m.games.create(name: "Outlast", price: 15, genre: "Horror", release_year: 2013)
n.games.create(name: "Super Smash Bros", price: 60, genre: "Fighter", release_year: 1999)
s.games.create(name: "The Order", price: 60, genre: "Adventure", release_year: 2015)
s.games.create(name: "Bloodborne", price: 60, genre: "Adventure", release_year: 2015)
s.games.create(name: "Final Fantasy", price: 40, genre: "RPG", release_year: 1987)
s.games.create(name: "Grim Fandango", price: 15, genre: "Adventure", release_year: 1998)
m.games.create(name: "Call of Duty", price: 60, genre: "Shooter", release_year: 2003)