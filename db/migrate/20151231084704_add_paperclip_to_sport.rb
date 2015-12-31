class AddPaperclipToSport < ActiveRecord::Migration
  def change
  	add_attachement :sports, :image
  end
end
