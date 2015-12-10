class Sport < ActiveRecord::Base
	has_many :equipements, inverse_of: :sport

	validates :name, :description, presence:  true
	validates :name, length: {minimum: 3}
	validates :name, uniqueness: { case_sensitive: false }
end
