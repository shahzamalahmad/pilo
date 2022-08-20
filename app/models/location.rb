class Location < ApplicationRecord
	belongs_to :area
	has_many :operator_name
end
