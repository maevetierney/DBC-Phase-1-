module Behavior

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