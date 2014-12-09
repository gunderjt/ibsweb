class AddAttachmentAvatarToPersonnels < ActiveRecord::Migration
  def self.up
    change_table :personnels do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :personnels, :avatar
  end
end
