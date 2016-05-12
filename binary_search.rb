def binary_search_include?(element, array)

  index = 0

  while index < array.length
    if array[index] == element
      return true

    end
		index += 1
  end

  return false

end 
#does the array include the object?(T||F)
	#array.each do |object|
			#when the array is empty 
				#return false
				#cannot find
			#when the array contains one obj 
				#return true
				#can find
			#when the obj is not included
				#return false
				#cannot find
			#when the obj is included
				#return true 
		#end 


#find the index of the given object in the array 
