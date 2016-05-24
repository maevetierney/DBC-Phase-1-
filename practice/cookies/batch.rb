require_relative 'cookie'
class Batch

	attr_accessor :cookie_tray

	def initialize(args={})
		@cookie_tray = args.fetch(:cookie_tray, [])
		@status = args.fetch(:status, :raw)
	end 

	def put_cookies_on_tray(cookie)
		if cookie.flavor == "chocolate_chip"
			12.times do 
				@cookie_tray << cookie
			end 
		end 
		@cookie_tray
		#add more flavor examples here 
	end 
end 