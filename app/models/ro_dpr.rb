class RoDpr < ApplicationRecord
	belongs_to :dpr, optional: true
	belongs_to :area, optional: true
	belongs_to :location, optional: true
	belongs_to :operator, optional: true
   	validates :operator_id, :area_id, :location_id, :tds, :flow, :date,  :presence => true


end
