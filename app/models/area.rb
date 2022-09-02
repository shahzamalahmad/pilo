class Area < ApplicationRecord
	
	has_many :locations
	has_many :operators
	has_many :ro_dprs
	
end
