class BloodSugarRecordSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :blood_sugar, :entry_time, :carbs, :insulin_units, :exercise
end


# t.integer :bloodsugar
# t.integer :entrytime
# t.integer :carbs
# t.integer :insulinunits
# t.boolean :exercise