class AddPaperclipToEquipement < ActiveRecord::Migration
  def change
	add_attachment :equipements, :image
  end
end
