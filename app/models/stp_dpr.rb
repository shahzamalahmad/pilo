class StpDpr < ApplicationRecord
	belongs_to :dprs, optional: true
    validates :operator_name, :location,  :presence => true

end
