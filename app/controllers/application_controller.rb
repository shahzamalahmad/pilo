class ApplicationController < ActionController::Base
	# before_filter do
	#   resource = Areas.singularize.to_sym
	#   method = "#{resource}_params"
	#   params[resource] &&= send(method) if respond_to?(method, true)
	# end
	# protect_from_forgery with: :null_session
end
