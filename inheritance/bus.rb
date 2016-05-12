require_relative 'vehicle'
require_relative 'vehicle_behavior_module'

class Bus < Vehicle

   attr_accessor :passengers,
      :num_seats, 
      :fare

   def initialize(args)
      @num_seats = args[:num_seats]
      @fare = args[:fare]
      @passengers= 0
      @wheels = 8
      @color = "Pink"
   end 

 def admit_passenger
   if @passengers < @num_seats 
      @passengers += 1
   else 
      p 'Full capacity!'
   end 
 end

 def stop_requested?
   brake 
 end


end
