class ChangeColumnNameDegreeType < ActiveRecord::Migration
  def change
    rename_column :degree_types, :type, :degree_type
  end
end
