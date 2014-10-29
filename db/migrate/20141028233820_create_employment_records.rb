class CreateEmploymentRecords < ActiveRecord::Migration
  def change
    create_table :employment_records do |t|
      t.integer :personnel_id
      t.integer :position_id
      t.integer :affiliation_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
