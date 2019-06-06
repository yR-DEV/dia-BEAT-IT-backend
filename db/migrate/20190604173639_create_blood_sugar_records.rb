class CreateBloodSugarRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_sugar_records do |t|
      t.references :user, foreign_key: true
      t.integer :blood_sugar
      t.string :record_time
      t.string :record_date
      t.integer :carbs
      t.integer :insulin_units

      t.timestamps
    end
  end
end
