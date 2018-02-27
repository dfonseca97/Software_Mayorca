class Associate < ApplicationRecord
	validates :code, uniqueness: true
	validates_presence_of :name, :last_name, :code
	has_many :attendances

end
