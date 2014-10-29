class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.integer :website_type_id
      t.string :url
      t.string :display_name

      t.timestamps
    end
  end
end
