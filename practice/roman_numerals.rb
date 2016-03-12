def convert_to_roman(arabic_number)
	hash = {
		1000 => "M",
		500	 => "D",
		100	 => "C",
		50	 => "L",
		10	 => "X",
		5	 => "V",
		1    => "I"
	}

	result = " "
	hash.each do |key, value|
		while arabic_number >= key 
			result << value 
			arabic_number -= key 
		end 
	end 
	result 
end

# Create a hash of descending integer keys related to strings
# of roman numerals 

# Create an empty result string

# Begin iterating over the hash using each, over keys and values
	# WHILE the arabic number is greater than or equal to the 
	# integer.... do this: 
		# IF true, push the value of the integer(key, value) into 
		# the result string 
		# SUBTRACT the value of the integer from the arabic number
	# END 
# END 
#RETURN result string 
