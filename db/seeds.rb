# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'test@test.com', password: '123456', password_confirmation: '123456')

mood1 = Mood.create(name: 'Happy', description: "test", user: user1)
mood2 = Mood.create(name: 'Sad', user: user1, description: "test")
mood3 = Mood.create(name: 'Angry', user: user1, description: "test")

affirmation1 = Affirmation.create(name: 'I am happy', user: user1)
affirmation2 = Affirmation.create(name: 'I am sad', user: user1)
affirmation3 = Affirmation.create(name: 'I am angry', user: user1)

meditation_log1 = MeditationLog.create(name: 'Meditation Log 1', description: "test", duration: 5, user: user1)