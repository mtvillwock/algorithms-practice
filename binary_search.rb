# input: target value, sorted array of integers

# output:
# return true or index of target if target is found
# return false if target is not present

# psuedocode
# find the low, mid, and high index of the given array
# if the target is equal to the index of the mid array, return true
# if the target is greater/less than the value of index of the high/low array, return false
# while the
#


def binary_search_iterative(target, array)
  low_index = 0
  mid_index = (array.length / 2)
  high_index = (array.length - 1)
  # handle instant find input
  if target == array[mid_index]
    return "index of target is #{mid_index}"
  end
  # handle out of bounds inputs
  if target > array[high_index]
    return false
  elsif target < array[low_index]
    return false
  end
  # start loop of binary chop operations
  while target != array[mid_index] do
      p "target is #{target}"
      p "low is #{low_index}, mid is #{mid_index}, high is #{high_index}"
      if target > array[mid_index]
        low_index = mid_index
        p "new low is #{low_index}"
        mid_index = (high_index - low_index) / 2
        p "new mid is #{mid_index}"
      elsif target < array[mid_index]
        high_index = mid_index
        p "new high is #{high_index}"
        mid_index = (high_index - low_index) / 2
        p "new mid is #{mid_index}"
      end
    end
    return true if target == array[mid_index]
  end

  p binary_search_iterative(3, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return index 2
  p binary_search_iterative(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return false
  p binary_search_iterative(11, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return false

  def binary_search_recursive(target, array)
    # magic
  end
