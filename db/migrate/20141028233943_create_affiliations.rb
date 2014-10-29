class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.string :institute_name
      t.string :website
      t.string :phone
      t.string :fax
      t.string :email
      t.integer :parent_institutition_id

      t.timestamps
    end
  end
end
