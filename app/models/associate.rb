class Associate < ApplicationRecord
	validates_presence_of :name, :last_name, :code
end
