class CreateAcademicDegrees < ActiveRecord::Migration
  def change
    create_table :academic_degrees do |t|
      t.integer :personnel_id
      t.integer :degree_type_id
      t.string :year_awarded
      t.boolean :in_progress
      t.string :university
      t.string :department

      t.timestamps
    end
  end
end
