def insertion_sort(arr)
  return arr if arr.length <= 1

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

def bubble_sort(arr)
  return arr if arr.length <= 1

  swap = true
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

# array = [8, 2, -5, 0, 9, -11]
# print bubble_sort(array)

# MERGE SORT = RECURSIVE DIVIDE AND CONQUER
# recursively divide initial array in to two parts until have arrays of one item
# split each item in to its own section

# keep going to combine all back in to large array
# Recursive divide and conquer
def merge_sort(unsorted_arr)
  return unsorted_arr if unsorted_arr.length <= 1

  left = merge_sort( unsorted_arr[0..(unsorted_arr.length/2 - 1) ] )
  right = merge_sort( unsorted_arr[(unsorted_arr.length/2)..-1])
  merge(left, right)
end

# Merge the returns of recursive calls to merge sort

#  MERGE TWO SORTED ARRAYS - RETURN A SORTED ARRAY
    # compare item 0 to item 1, swap so ascending order
    # move to items 2,3 4,5 6,7  iteration
    # once each pair is sorted, combine in to 2 element array
    # then combine pair arrays by  ...
    # look at first value in each
    # put smaller one in new array, pop off old pair array
    # look at first item in each again
    # unless one of the arrays is emtpy, then push remaining array on to new array
    # in entirety
def merge(left, right)
  return_array = []
  until left.empty? && right.empty?
    if left.empty?
      return_array += right
      right = []
    elsif right.empty?
      return_array += left
      left = []
    else
      if left[0] >= right[0]
        return_array.push right.shift
      else
        return_array.push left.shift
      end
    end
  end
  return_array
end
# refactor so it doesn't utilize shift and uses indexes instead

def benchmark(arr)
  start = Time.now
  1000.times { insertion_sort(arr) }
  puts "insertion time = #{Time.now - start}"
  start = Time.now
  1000.times { bubble_sort(arr) }
  puts "bubble time = #{Time.now - start}"
  start = Time.now
  1000.times { merge_sort(arr) }
  puts "merge time = #{Time.now - start}"
end
array = Array.new(8027){rand(0..14525653645)}
benchmark(array)
