class RoDpr < ApplicationRecord
	belongs_to :dprs, optional: true
    validates :operator_name, :location, :tds, :flow,  :presence => true


end
