class Area < ApplicationRecord
	# agra, mathura, vrindawan, barsana, delhi, banaras, ayodhya
	has_many :location
	has_many :operator_name
end
