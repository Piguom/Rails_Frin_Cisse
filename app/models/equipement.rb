class Equipement < ActiveRecord::Base
	belongs_to :sport
	has_attached_file :image, styles: {small: "64x64", med: "100x100", large: "200x200"}
	
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :sport, presence: true
	validates :name, :description, presence:  true
	validates :name, length: {minimum: 3}
end
