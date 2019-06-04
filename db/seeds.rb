# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'YrDeV', email: 'yrdev@protonmail.com', password: 'cleverPasswordHere1!')
entry1 = BloodSugarRecord.create(user: user1, blood_sugar: 145, entry_time: 1, carbs: 20, insulin_units: 2, exercise: false)
userState = DiabetesMetric.create(user: user1, height: 69, weight: 145, blood_sugar_target_low: 80, blood_sugar_target_high: 130, morning_insulin_to_carb_ratio: 10, noon_insulin_to_carb_ratio: 10, night_insulin_to_carb_ratio: 10, morning_lantus_units: 10, night_lantus_units: 0, a1c_goal: 7.5, weight_goal: 145, personal_goal: "to lower my a1c under 7.0 within the next year", glucometer_brand: "OneTouch", fast_insulin_brand: "Humalog", long_insulin_brand: "Lantus")


# t.integer :bloodsugar
# t.integer :entrytime
# t.integer :carbs
# t.integer :insulinunits
# t.boolean :exercise


# t.integer :height
# t.integer :weight
# t.integer :blood_sugar_target_low
# t.integer :blood_sugar_target_high
# t.integer :morning_insulin_to_carb_ratio
# t.integer :noon_insulin_to_carb_ratio
# t.integer :night_insulin_to_carb_ratio
# t.integer :morning_lantus_units
# t.integer :night_lantus_units
# t.float :a1c_goal
# t.integer :weight_goal
# t.text :personal_goal
# t.string :glucometer_brand
# t.string :fast_insulin_brand
# t.string :long_insulin_brand