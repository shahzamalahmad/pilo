class Location < ApplicationRecord
	belongs_to :area, optional: true
	has_many :operators
	validates :location_name,  :presence => true

end
