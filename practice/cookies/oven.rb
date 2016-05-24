require_relative 'cookie'
require_relative 'batch'
class Oven 

	attr_accessor :cookie_tray, :status, :timer

	def initialize(args={})
		@cookie_tray = args.fetch(:cookie_tray, [])
		@status = args.fetch(:status, [])
		@temperature = args.fetch(:temperature, 0)
		@timer = args.fetch(:timer, 0)
	end 

	def bake(batch)
		@cookie_tray = batch 
		@cookie_tray.each do |cookie|
			cookie.status = :baked 
		end 
		@cookie_tray
		#change cookie status to baked 		
	end 
end 


#bake cookies(takes batch in )
	#cookie status changes to cooked 
	#returns a cooked cookie array


#---
#put cookies in the oven
	#turn oven on
	#timer turns on 

#bake 