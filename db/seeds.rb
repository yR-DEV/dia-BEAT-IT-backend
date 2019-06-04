# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'YrDeV', email: 'yrdev@protonmail.com', password: 'cleverPasswordHere1!')
entry1 = BloodSugarRecord.create(user: user1, blood_sugar: 145, entry_time: 1, carbs: 20, insulin_units: 2, exercise: false)



# t.integer :bloodsugar
# t.integer :entrytime
# t.integer :carbs
# t.integer :insulinunits
# t.boolean :exercise