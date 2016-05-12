def binary_search(set, item)
  min = 0
  max = set.length - 1

  while max >= min
    mid = (max + min) / 2

    puts "our current mid point is at index: #{mid}"
    puts "which is the value of #{set[mid]}"
    puts "our min point is currently at index #{min}"
    puts "our max point is currently at index #{max}"

    if set[mid] == item
      return mid
    elsif set[mid] < item
      puts "resetting min to #{mid + 1}"
      min = mid + 1
    elsif set[mid] > item
      puts "resetting max to #{mid - 1}"
      max = mid - 1
    end
    puts "play it again Sam!"
  end

  return nil
end

def linear_search(set, item)

end
