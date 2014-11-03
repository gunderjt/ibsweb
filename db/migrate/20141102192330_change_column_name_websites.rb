class ChangeColumnNameWebsites < ActiveRecord::Migration
  def change
    rename_column :website_types, :type, :web_type
  end
end
