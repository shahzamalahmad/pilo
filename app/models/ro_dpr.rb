class RoDpr < ApplicationRecord
	belongs_to :dprs, optional: true
   	validates :operator_name, :location, :tds, :flow, :date,  :presence => true


end
