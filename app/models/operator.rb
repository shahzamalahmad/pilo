class Operator < ApplicationRecord
	belongs_to :location, optional: true
	belongs_to :ro_dprs
	belongs_to :stp_dprs

end
