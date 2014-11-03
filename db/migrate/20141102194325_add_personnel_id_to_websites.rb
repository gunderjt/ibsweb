class AddPersonnelIdToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :personnel_id, :integer
  end
end
