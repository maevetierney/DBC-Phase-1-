require_relative 'vehicle'
require_relative 'vehicle_behavior_module'

class Car < Vehicle 
	
	def initialize(args)
    	@wheels = 4
    	@color = 'Blue'
    end 

end
