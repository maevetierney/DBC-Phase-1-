class Array
    def delete_all(needle)
        exist = false
        temp.each_with_index do |element,index|
            #each with index change 
                if (element == needle)
                    temp.delete_at(index)
                    exist = true
                end 
        end 
        if exist 
            temp
        else 
            return false 
        end 
    end
end
# time for each with index ---  O(n)
# time for delete at(index)---  O(1)


#iterate over the array
#select all of the needles and 
#delete permanently 
#return temp 

#temp.each_with_index do |element,index|
    #         if(element == needle)
    #             temp.delete_at(index)
    #             return temp
    #         end
    #     end
    #     temp
    # end
    # def delete_all(needle)
    #  temp = self
    #     while(temp.include?(needle))
    #         temp = temp.delete_first(needle)
    #     end
    #     temp       
    # end   