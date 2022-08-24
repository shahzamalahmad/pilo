class Location < ApplicationRecord
	belongs_to :area
	has_many :operators
end
