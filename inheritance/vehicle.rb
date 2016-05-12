require_relative 'vehicle_behavior_module'

class Vehicle 
	attr_accessor :wheels, :color, :status

	def drive
   		@status = :driving
   	end 

	def needs_gas?
	   return [true,true,true,false].sample
	end

	def brake
   		@status = :stopped
 	end 
end