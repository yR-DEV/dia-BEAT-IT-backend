class CreateDiabetesMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :diabetes_metrics do |t|
      t.references :user, foreign_key: true
      t.integer :height
      t.integer :weight
      t.integer :blood_sugar_target_low
      t.integer :blood_sugar_target_high
      t.integer :morning_insulin_to_carb_ratio
      t.integer :night_insulin_to_carb_ratio
      t.integer :lantus_units
      t.float :a1c_goal
      t.text :personal_goal

      t.timestamps
    end
  end
end
