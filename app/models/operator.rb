class Operator < ApplicationRecord
	belongs_to :location, optional: true
	belongs_to :area, optional: true
	belongs_to :user, optional: true
	
	has_many :ro_dprs, dependent: :destroy
	has_many :stp_dprs, dependent: :destroy

end
