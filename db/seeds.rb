# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

movies = Movie.create([
    { title: "Harry Testing", description: "This film is about the Harry T.", duration: 5400},
    { title: "Lord of Tests", description: "This film is about the Ruby Ring", duration: 10800},
    { title: "Test on Rails", description: "This film is about kil", duration: 5400}])