class Equipement < ActiveRecord::Base
	belongs_to :sport

	validates :sport, presence: true
	validates :name, :description, presence:  true
	validates :name, length: {minimum: 3}
end
