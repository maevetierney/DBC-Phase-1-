
def bottle_song_lyrics(n)
  lyrics = ""

  until n == 0 

    if n > 2
      lyrics += "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down, pass it around, #{n - 1} bottles of beer on the wall!\n"

    else
      two_bottle = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down, pass it around, 1 bottle of beer on the wall!\n"
      one_bottle = "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down, pass it around, no more bottles of beer on the wall!"
    end

    n -= 1
  end

  return lyrics + two_bottle + one_bottle
end 
# => Create an empty string 
# Loop until n = 0 
	# =>If n > 2 
			# p "#{n} bottles of beer on the wall, #{n} bottles of beer. Take one down, pass it around, #{n - 1 } more bottles of beer on the wall!"
		# ELSE 
			# create two bottle = " 2 and 1 with bottle and bottles fixed"
		# n -= one UPDATE COUNTER INSIDE 
	#END 
	# retrun lyrics(empty string) plus two bottle and one bottle 
