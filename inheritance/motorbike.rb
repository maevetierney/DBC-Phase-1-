require_relative 'vehicle'
require_relative 'vehicle_behavior_module'

class MotorBike < Vehicle
	
attr_accessor :speed
 def initialize(args)
   @wheels = 2
   @color = "Black"
 end

 def drive
   super 
   @speed = :fast
 end

 def weave_through_traffic
   @status = :driving_like_a_crazy_person
 end

end