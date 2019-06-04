class CreateBloodSugarRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_sugar_records do |t|
      t.references :user, foreign_key: true
      t.integer :bloodsugar
      t.integer :entrytime
      t.integer :carbs
      t.integer :insulinunits
      t.boolean :exercise

      t.timestamps
    end
  end
end
