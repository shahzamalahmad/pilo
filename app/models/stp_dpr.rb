class StpDpr < ApplicationRecord
	belongs_to :dprs, optional: true
	belongs_to :area, optional: true
	belongs_to :location, optional: true
	belongs_to :operator, optional: true	
	belongs_to :user, optional: true
     validates :area_id, :operator_id, :location_id,  :presence => true

end
