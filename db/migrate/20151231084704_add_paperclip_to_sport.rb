class AddPaperclipToSport < ActiveRecord::Migration
  def change
  	add_attachment :sports, :image
  end
end
