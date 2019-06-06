# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'YrDeV', email: 'yrdev@protonmail.com', password: 'cleverPasswordHere1!')
entry0 = BloodSugarRecord.create(user: user1, blood_sugar: 145, record_time: "11:45", record_date: '06/01/2019', carbs: 20, insulin_units: 2)
entry1 = BloodSugarRecord.create(user: user1, blood_sugar: 245, record_time: "12:45", record_date: '06/01/2019', carbs: 0, insulin_units: 2)
entry2 = BloodSugarRecord.create(user: user1, blood_sugar: 165, record_time: "15:45", record_date: '06/01/2019', carbs: 60, insulin_units: 6)
entry3 = BloodSugarRecord.create(user: user1, blood_sugar: 74, record_time: "06:45", record_date: '06/02/2019', carbs: 37, insulin_units: 4)
entry4 = BloodSugarRecord.create(user: user1, blood_sugar: 54, record_time: "08:45", record_date: '06/02/2019', carbs: 35, insulin_units: 1)
entry5 = BloodSugarRecord.create(user: user1, blood_sugar: 345, record_time: "17:45", record_date: '06/02/2019', carbs: 90, insulin_units: 13)
entry6 = BloodSugarRecord.create(user: user1, blood_sugar: 234, record_time: "20:45", record_date: '06/02/2019', carbs: 0, insulin_units: 1)
entry7 = BloodSugarRecord.create(user: user1, blood_sugar: 89, record_time: "22:45", record_date: '06/02/2019', carbs: 0, insulin_units: 0)
entry8 = BloodSugarRecord.create(user: user1, blood_sugar: 322, record_time: "03:45", record_date: '06/03/2019', carbs: 0, insulin_units: 3)
entry9 = BloodSugarRecord.create(user: user1, blood_sugar: 104, record_time: "04:45", record_date: '06/03/2019', carbs: 0, insulin_units: 0)
entry10 = BloodSugarRecord.create(user: user1, blood_sugar: 115, record_time: "23:45", record_date: '06/03/2019', carbs: 20, insulin_units: 2)
entry11 = BloodSugarRecord.create(user: user1, blood_sugar: 98, record_time: "11:45", record_date: '06/04/2019', carbs: 67, insulin_units: 7)

userState = DiabetesMetric.create(user: user1, height: 69, weight: 145, blood_sugar_target_low: 80, blood_sugar_target_high: 130, morning_insulin_to_carb_ratio: 10, noon_insulin_to_carb_ratio: 10, night_insulin_to_carb_ratio: 10, morning_lantus_units: 10, night_lantus_units: 0, a1c_goal: 7.5, weight_goal: 145, personal_goal: "to lower my a1c under 7.0 within the next year", glucometer_brand: "OneTouch", fast_insulin_brand: "Humalog", long_insulin_brand: "Lantus")

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