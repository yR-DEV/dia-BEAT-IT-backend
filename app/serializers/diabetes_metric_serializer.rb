class DiabetesMetricSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :height, :weight, :morning_insulin_to_carb_ratio, :noon_insulin_to_carb_ratio, :night_insulin_to_carb_ratio, :morning_lantus_units, :night_lantus_units, :a1c_goal, :weight_goal, :personal_goal, :glucometer_brand, :fast_insulin_brand, :long_insulin_brand, :blood_sugar_target_low, :blood_sugar_target_high
end


# t.integer :height
# t.integer :weight
# t.integer :morning_insulin_to_carb_ratio
# t.integer :noon_insulin_to_carb_ratio
# t.integer :night_insulin_to_carb_ratio
# t.integer :morning_lantus_units
# t.integer :night_lantus_units
# t.float :a1c_goal
# t.integer :weight_goal
# t.text :personal_goal
# t.string :glucometer_brand
# t.string :insulin_fast_acting_brand
# t.string :insulin_long_acting_brand
# :blood_sugar_target_low/high