class Operator < ApplicationRecord
	belongs_to :location, optional: true
	belongs_to :area, optional: true
	has_many :ro_dprs

end
