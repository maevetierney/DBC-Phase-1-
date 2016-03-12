# TODO: Return the odd numbers from a list of integers.
#       Use #select.
def odd_integers(array)
	array.select do |number|
		number % 2 != 0 
	end 
end

# TODO: Return the first number from an Array that is less than a particular number - 'limit.'
#       Use #find.
def first_under(array, limit)
	array.find do |number|
		number < limit 
	end 
end

# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       Use #map.
def add_bang(array)

	array.map do |string|
		string + '!'
	end 

end

# TODO: Calculate the sum of an Array of numbers.
#       Use #reduce.
def sum(array)
	array.reduce(&:+)
end

# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       Use #each_slice in combination with other enumerable methods.
def sorted_triples(array)
	array.each_slice(3).map do |slice|
		slice.sort {|a, b| a <=> b}
	end 
end

# # TODO: Returns an array of elements at indices 1, 3, 5, 7, etc.
# #       Use #each_with_index.
# def odd_indexed_elements(array)
# end
