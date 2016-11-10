def insertion_sort(arr)

  # index for every element in the array from the beginning to the end - 1
  # value is the value of the index you're on
  # keep track of the sorted chunk length (the index of the element you are  currently checking - 1)
  #
  for element in 1...arr.length

    value = arr[element]
    end_of_sorted_list = element - 1

    while(end_of_sorted_list >= 0 && arr[end_of_sorted_list] > value)
        arr[end_of_sorted_list + 1] = arr[end_of_sorted_list]
        end_of_sorted_list -= 1
    end

    arr[end_of_sorted_list + 1] = value

  end

  arr

end

array = [8, 2, -5, 0, 9, -11]
print insertion_sort(array)












def bubble_sort(arr)

  # loop twice until we don't have anything to swap
  # outside loop[0..-2]   the end of the list will decrement each time
    # set swap to false
    # inside loop from 0 to then end of the list
    # compare a[i] to a[i + 1]
    # if a[i] is greater than a[i + 1]
      # swap values
      # set swap to true
    # decrement end of list
    # if swap is false
      # our array is sorted
      # return the array


end

array = [8, 2, -5, 0, 9, -11]
print buble_sort(array)



# def merge_sort
# end




