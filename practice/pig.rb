def pig(word)

  add = 'ay'
  word = word.split('')

  if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
    return word + 'ay'

  else
    
    consononant = word.shift #[p]
    new_word = word.join('') + consononant + 'ay'
    return new_word

  end
end

#Create a variable called array which is a string to an array each character of the word
# Create a variable called first_letter which is the first element in the array 
# IF the first letter is a vowel
	# push the first letter to the end of the array
	# then also push the string 'ay' to the end of the array 
	# end
	# return array.join to a string 