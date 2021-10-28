# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mood1 = Mood.create(name: "Happy", user_id: user1.id, description: "I'm feeling happy today")
mood2 = Mood.create(name: "Sad", user_id: user1.id, description: "I'm feeling sad today")
mood3 = Mood.create(name: "Angry", user_id: user2.id, description: "I'm feeling angry today")
