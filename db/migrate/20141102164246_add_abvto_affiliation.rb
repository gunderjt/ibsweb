class AddAbvtoAffiliation < ActiveRecord::Migration
  def change
    add_column :affiliations, :abv, :string
  end
end
