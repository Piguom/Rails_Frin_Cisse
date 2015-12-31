class Sport < ActiveRecord::Base
	has_many :equipements, inverse_of: :sport

	has_attached_file :image, styles: {small: "64x64", med: "100x100", large: "200x200"}
	
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates :name, :description, presence:  true
	validates :name, length: {minimum: 3}
	validates :name, uniqueness: { case_sensitive: false }
end
