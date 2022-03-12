# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.create([
               { title: 'Harry Testing', description: 'This film is about the Harry T.', duration: 5400 },
               { title: 'Lord of Tests', description: 'This film is about the Ruby Ring', duration: 10_800 },
               { title: 'Test on Rails', description: 'This film is about kil', duration: 5400 }
             ])

Hall.create([
              { name: 'Red Hall' },
              { name: 'Green Hall' },
              { name: 'Blue Hall' }
            ])

Seance.create([
                { hall_id: 1, movie_id: 2, start_time: Time.strptime('07/16/2022 08:00', '%m/%d/%Y %H:%M'),
                  end_time: Time.strptime('07/16/2022 10:00', '%m/%d/%Y %H:%M') },
                { hall_id: 4, movie_id: 2, start_time: Time.strptime('06/30/2012 12:00', '%m/%d/%Y %H:%M'),
                  end_time: Time.strptime('06/30/2012 16:00', '%m/%d/%Y %H:%M') }
              ])
