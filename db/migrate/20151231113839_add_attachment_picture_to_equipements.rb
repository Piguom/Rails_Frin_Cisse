class AddAttachmentPictureToEquipements < ActiveRecord::Migration
  def self.up
    change_table :equipements do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :equipements, :picture
  end
end
