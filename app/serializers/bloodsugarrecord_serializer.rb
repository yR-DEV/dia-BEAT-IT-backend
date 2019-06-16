class BloodSugarRecordSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :blood_sugar, :record_time, :record_date, :carbs, :insulin_units
end


# t.integer :bloodsugar
# t.integer :entrytime
# t.integer :carbs
# t.integer :insulinunits
# t.boolean :exercise