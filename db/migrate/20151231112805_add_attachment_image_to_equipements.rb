class AddAttachmentImageToEquipements < ActiveRecord::Migration
  def self.up
    change_table :equipements do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :equipements, :image
  end
end
