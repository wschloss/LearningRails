# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pet.create(name: "Sally", age: "10", description: "Golden Retriever", picture: "golden_retriever.jpg")
Pet.create(name: "Burt", age: "5", description: "English Bulldog", picture: "english_bulldog.jpg")
Pet.create(name: "Fluffy", age: "2", description: "American Shorthair", pet_type: "cat", picture: "american_shorthair.jpg")
Pet.create(name: "Whiskers", age: "6", description: "Siamese Cat", pet_type: "cat", picture: "siamese.jpg")
Pet.create(name: "Sparky", age: "2", description: "German Shepherd", picture: "german_shepherd.jpg")
Pet.create(name: "Missy", age: "5", description: "Yorkshire Terrier", picture: "yorkshire_terrier.jpg")