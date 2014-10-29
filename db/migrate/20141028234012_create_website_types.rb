class CreateWebsiteTypes < ActiveRecord::Migration
  def change
    create_table :website_types do |t|
      t.string :type
      t.integer :rank

      t.timestamps
    end
  end
end
