class Area < ApplicationRecord
	
	belongs_to :user
	has_many :locations, dependent: :destroy
	has_many :operators, dependent: :destroy
	has_many :ro_dprs, dependent: :destroy

	
end
