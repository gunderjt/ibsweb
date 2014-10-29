class CreateDegreeTypes < ActiveRecord::Migration
  def change
    create_table :degree_types do |t|
      t.string :type
      t.integer :rank

      t.timestamps
    end
  end
end
