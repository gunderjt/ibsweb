class CreatePersonnels < ActiveRecord::Migration
  def change
    create_table :personnels do |t|
      t.string :uname
      t.boolean :mailing_list
      t.boolean :formally_affiliated
      t.boolean :retiree
      t.boolean :rostered
      t.string :first_name
      t.string :last_name
      t.string :salutation
      t.text :notes
      t.text :research_interests
      t.text :skills_expertise
      t.text :bio
      t.string :employee_id

      t.timestamps
    end
  end
end
