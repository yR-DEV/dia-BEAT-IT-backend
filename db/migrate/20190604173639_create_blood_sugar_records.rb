class CreateBloodSugarRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_sugar_records do |t|
      t.references :user, foreign_key: true
      t.integer :blood_sugar
      t.integer :entry_time
      t.integer :carbs
      t.integer :insulin_units
      t.boolean :exercise

      t.timestamps
    end
  end
end
