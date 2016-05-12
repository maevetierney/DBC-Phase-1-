require_relative 'shirt'
require_relative 'pants'

class InventorySystem

	attr_accessor :status

	def initialize
		@status = {shirt: :low, pants: :low}
		@closet = {shirt: [], pants: []}
		@capacity = 100
		@limit_per_item = {shirt: 0, pants: 0}
	end 

	def total
		@closet[:pants].length + @closet[:shirts].length	
	end 

	def update_status
		if @cloest[:shirt].length <= @limit_per_item[:shirt] * 0.033 || @closet[:pants].length <= @limit_per_item[:pants] * 0.033
				@status = :low 
				#needs to be specific to pants and shirts becuase of initialize change above 
		elsif @cloest[:shirt].length <= @limit_per_item[:shirt] * 0.05 @closet[:pants].length <= @limit_per_item[:pants]
				@status = :average
		elsif @cloest[:shirt].length <= @limit_per_item[:shirt] * 0.075 || @closet[:pants].length <= @limit_per_item[:pants] * 0.075
				@status = :high
		end 
		#fix this code to making this more generic so i can take a ton of items because status corresponds to limit 
		#make everything to a hash 
		#do one thing corresponding to a specific item in the hash 
		#introduce sizes and be able to subtract specific items 
	end 

	def add(item, number)
		if @status == :low || :average
			if item == :shirt 
				number.times do 
						@closet[:shirt] << Shirt.new
						break if @total == @limit 
					end 
				end 
			else item == :pants
				number.times do 
						@closet[:pants] << Pant.new
						break if @total == @limit 
					end 
				end 
			end  
		end 
		p "Capacity is at full!"
	end


	def set_limit_for_item(item, limit)
		@limit_per_item[item] = limit
	end 


	def remove(item, number)
		if @status == :low || :average
			if item == :shirt 
				number.times do 
						@closet[:shirt].pop
						break if @total == @limit 
					end 
				end 
			else item == :pants
				number.times do 
						@closet[:pants].pop
						break if @total == @limit 
					end 
				end 
			end  
		end 
		p "Capacity is at full!"
	end

end 

