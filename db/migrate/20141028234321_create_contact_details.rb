class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.integer :personnel_id
      t.string :job_title
      t.string :organization
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :phone
      t.string :email
      t.string :alt_phone
      t.string :alt_email

      t.timestamps
    end
  end
end
