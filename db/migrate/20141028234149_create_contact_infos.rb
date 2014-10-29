class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.integer :personnel_id
      t.string :office_number
      t.string :phone_number
      t.string :email
      t.boolean :display

      t.timestamps
    end
  end
end
