require_relative "cookie"
require_relative "cc_cookie"
require_relative "oatmeal_cookie"
require_relative "sugar_cookie"

class Batch 

	attr_accessor :tray

	def initialize(args)
		@cookie_type = args
		@tray = make_cookies
	end  

	def make_cookies
		array = []
		if @cookie_type == 1
			12.times do |i|
			array << CCcookie.new
			end 
		elsif @cookie_type == 2
			12.times do |i|
			array << OatmealCookie.new
		end
		elsif @cookie_type == 3
			12.times do |i|
			array << SugarCookie.new 
			end
		else 
			p "Need a cookie type."
		end 
		return array 
	end 
end 