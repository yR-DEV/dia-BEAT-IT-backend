class DiabetesMetricSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :height, :weight, :blood_sugar_target_low, :blood_sugar_target_high,
             :morning_insulin_to_carb_ratio, :night_insulin_to_carb_ratio, :lantus_units,
             :a1c_goal, :personal_goal
end

# t.references :user, foreign_key: true
# t.integer :height
# t.integer :weight
# t.integer :blood_sugar_target_low
# t.integer :blood_sugar_target_high
# t.integer :morning_insulin_to_carb_ratio
# t.integer :night_insulin_to_carb_ratio
# t.integer :lantus_units
# t.float :a1c_goal
# t.text :personal_goal
