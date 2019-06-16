# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'YrDeV', email: 'yrdev@protonmail.com', password: 'cleverPasswordHere1!')
admin = User.create(username: 'Q W E R T Y', email: 'yr@querty.io', password: '!@#123')
admin2 = User.create(username: "123", email: '123', password: '123')

entry0 = BloodSugarRecord.create(user: admin2, blood_sugar: 145, record_time: "morning", record_date: '06/03/2019', carbs: 20, insulin_units: 2)
entry1 = BloodSugarRecord.create(user: admin2, blood_sugar: 245, record_time: "preBreakfast", record_date: '06/03/2019', carbs: 0, insulin_units: 2)
entry2 = BloodSugarRecord.create(user: admin2, blood_sugar: 165, record_time: "postBreakfast", record_date: '06/03/2019', carbs: 60, insulin_units: 6)
entry3 = BloodSugarRecord.create(user: admin2, blood_sugar: 74, record_time: "preLunch", record_date: '06/03/2019', carbs: 37, insulin_units: 4)
entry4 = BloodSugarRecord.create(user: admin2, blood_sugar: 54, record_time: "postLunch", record_date: '06/03/2019', carbs: 35, insulin_units: 1)
entry5 = BloodSugarRecord.create(user: admin2, blood_sugar: 345, record_time: "preDinner", record_date: '06/03/2019', carbs: 90, insulin_units: 13)
entry6 = BloodSugarRecord.create(user: admin2, blood_sugar: 234, record_time: "postDinner", record_date: '06/03/2019', carbs: 0, insulin_units: 1)
entry7 = BloodSugarRecord.create(user: admin2, blood_sugar: 89, record_time: "night", record_date: '06/03/2019', carbs: 0, insulin_units: 0)

entry20 = BloodSugarRecord.create(user: admin2, blood_sugar: 170, record_time: "morning", record_date: '06/05/2019', carbs: 0, insulin_units: 1)
entry21 = BloodSugarRecord.create(user: admin2, blood_sugar: 74, record_time: "preBreakfast", record_date: '06/05/2019', carbs: 35, insulin_units: 3)
entry22 = BloodSugarRecord.create(user: admin2, blood_sugar: 257, record_time: "postBreakfast", record_date: '06/05/2019', carbs: 0, insulin_units: 2)
entry23 = BloodSugarRecord.create(user: admin2, blood_sugar: 159, record_time: "preLunch", record_date: '06/05/2019', carbs: 67, insulin_units: 7)
entry24 = BloodSugarRecord.create(user: admin2, blood_sugar: 167, record_time: "postLunch", record_date: '06/05/2019', carbs: 0, insulin_units: 0)
entry25 = BloodSugarRecord.create(user: admin2, blood_sugar: 119, record_time: "preDinner", record_date: '06/05/2019', carbs: 56, insulin_units: 5)
entry26 = BloodSugarRecord.create(user: admin2, blood_sugar: 302, record_time: "postDinner", record_date: '06/05/2019', carbs: 0, insulin_units: 2)
entry27 = BloodSugarRecord.create(user: admin2, blood_sugar: 182, record_time: "night", record_date: '06/05/2019', carbs: 0, insulin_units: 0)

entry10 = BloodSugarRecord.create(user: admin2, blood_sugar: 89, record_time: "morning", record_date: '06/04/2019', carbs: 20, insulin_units: 2)
entry11 = BloodSugarRecord.create(user: admin2, blood_sugar: 104, record_time: "preBreakfast", record_date: '06/04/2019', carbs: 0, insulin_units: 2)
entry12 = BloodSugarRecord.create(user: admin2, blood_sugar: 245, record_time: "postBreakfast", record_date: '06/04/2019', carbs: 40, insulin_units: 4)
entry13 = BloodSugarRecord.create(user: admin2, blood_sugar: 192, record_time: "preLunch", record_date: '06/04/2019', carbs: 26, insulin_units: 3)
entry14 = BloodSugarRecord.create(user: admin2, blood_sugar: 75, record_time: "postLunch", record_date: '06/04/2019', carbs: 15, insulin_units: 0)
entry15 = BloodSugarRecord.create(user: admin2, blood_sugar: 245, record_time: "preDinner", record_date: '06/04/2019', carbs: 72, insulin_units: 8)
entry16 = BloodSugarRecord.create(user: admin2, blood_sugar: 134, record_time: "postDinner", record_date: '06/04/2019', carbs: 0, insulin_units: 1)
entry17 = BloodSugarRecord.create(user: admin2, blood_sugar: 268, record_time: "night", record_date: '06/04/2019', carbs: 0, insulin_units: 2)

userState = DiabetesMetric.create(user: user1, height: 69, weight: 145, blood_sugar_target_low: 80, blood_sugar_target_high: 130, morning_insulin_to_carb_ratio: 10, night_insulin_to_carb_ratio: 10, lantus_units: 10, a1c_goal: 7.5, personal_goal: "to lower my a1c under 7.0 within the next year")
userState = DiabetesMetric.create(user: admin, height: 69, weight: 145, blood_sugar_target_low: 80, blood_sugar_target_high: 130, morning_insulin_to_carb_ratio: 10, night_insulin_to_carb_ratio: 10, lantus_units: 10, a1c_goal: 7.5, personal_goal: "to lower my a1c under 7.0 within the next year")                   
userState = DiabetesMetric.create(user: admin2, height: 69, weight: 145, blood_sugar_target_low: 80, blood_sugar_target_high: 130, morning_insulin_to_carb_ratio: 10, night_insulin_to_carb_ratio: 10, lantus_units: 10, a1c_goal: 7.5, personal_goal: "to lower my a1c under 7.0 within the next year")

# entry10 = BloodSugarRecord.create(user: user1, blood_sugar: 200, record_time: "night", record_date: '06/10/2019', carbs: 0, insulin_units: 1)

# t.references :user, foreign_key: true
# t.integer :blood_sugar
# t.integer :record_time
# t.integer :record_date
# t.integer :carbs
# t.integer :insulin_units


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