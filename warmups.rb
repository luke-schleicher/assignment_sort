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

# array = [8, 2, -5, 0, 9, -11]
# print insertion_sort(array)
#











def bubble_sort(arr)
  swap = false
  end_of_unsorted_list = arr.length - 1
  while swap
    swap = false
    (0..end_of_unsorted_list - 1).each do |left_item|
      right_item = left_item + 1
      if arr[left_item] > arr[right_item]
        arr[left_item], arr[right_item] = arr[right_item], arr[left_item]
        swap = true
      end
    end
    end_of_unsorted_list -= 1
  end
  arr
end

array = [8, 2, -5, 0, 9, -11]
print bubble_sort(array)



# def merge_sort
# end
