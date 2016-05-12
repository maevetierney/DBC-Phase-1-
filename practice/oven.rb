require_relative "batch"

class Oven 

	attr_accessor :oven_status, :temp, :done_time, :space, :bake_time

	def initialize
		@oven_status = "off" 
		@temp = 0 #degrees
		@done_time = 0 #min
		@bake_time = 0 #min
		@space = [] 
	end 

	def cookie
		batch = @space[0]
		cookie = batch.tray.first
	end 

	def turn_on
		@oven_status = "on"
		@temp = cookie.cook_temp 
		
	end

	def put_cookies_in(batch)
		@space << batch 
		p @space 
		turn_on
		@done_time = cookie.ready_time
		while @oven_status == "on" && @space.any?
			@bake_time += 1 
			check_oven
		end 
	end 

	def check_oven
		time_left = @done_time - @bake_time
		batch = @space[0]

		batch.tray.each do |cookie|
			if (@done_time * 3/4) == @bake_time 
				cookie.cookie_status = "almost_ready"
			elsif @bake_time == @done_time
				cookie.cookie_status = "done"
				take_cookies_out
				turn_oven_off 
			elsif @bake_time > @done_time
				cookie.cookie_status = "burned"
				take_cookies_out
				turn_oven_off
			else		
				p "Cookies are baking!"
			end 
		end 

		p "There is #{time_left} and the cookies are #{cookie.cookie_status}"
		p @space 
	end 
		
	def take_cookies_out
		return @space[0] 
	end

	def turn_oven_off
		@oven_status = "off"
	end 

end 

batch = Batch.new(1)
oven = Oven.new
p oven.put_cookies_in(batch)

#change the capacity of the oven - make it so it can take a max of 2 cookies, and that its less about cookies, and more generic

#check status
		# => status = batch.tray.first.cookie_status
			#if the cookie's baking time is 3/4 done time
				#almost ready
			#if the cookie's baking time is greater than the done time 
				#burned
	#turn oven off 

#return baked cookies change the status to :done 

# returns [chocolate chips,12]

# batch.put_cookies_in 
# 	#increase start_temp 
# 		#stop when cook_temp is reached


# => @cook_temp=300
			#increment start temp until it reaches cook temperature &&
		# => @ready_time=13
			#increment the time until it reaches the ready time 
		#when the above is true, 
			#change the cookie status to "done" and return the batch 		