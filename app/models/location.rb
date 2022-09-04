class Location < ApplicationRecord
	belongs_to :area, optional: true
	has_many :ro_dprs, dependent: :destroy
	has_many :operators, dependent: :destroy
	validates :location_name,  :presence => true

end
