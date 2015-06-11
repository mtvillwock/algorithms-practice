# input: target value, sorted array of integers

# output:
# return true or index of target if target is found
# return false if target is not present

# psuedocode
# find the low, mid, and high index of the given array
# if the target is equal to the index of the mid array, return true
# if the target is greater/less than the value of index of the high/low array, return false
# while the target is not the array value of the mid index
# if the target is greater than value of the array's mid index
# => set the low index to the mid index
# => set the mid index to the sum of the high index minus the low index divided by two
# elsif
# => set the high index to the mid index
# => set the mid index to the sum of the high index minus the low index divided by two
# return true if the value of the array's mid index equals the target

def binary_search_iterative(target, array)
  low_index = 0
  high_index = array.length - 1

  # handle out of bounds inputs
  if target > array[high_index]
    return false
  elsif target < array[low_index]
    return false
  end
  # start loop of binary chop operations
  while low_index <= high_index do
      mid_index = (high_index + low_index) / 2

      # handle instant find input
      if target == array[mid_index]
        return "index of target is #{mid_index}"
    #   elsif target > array[mid_index]
    #     sleep(2.0)
    #     p "target is #{target}"
    #     p "low is #{low_index}, mid is #{mid_index}, high is #{high_index}"
    #     low_index = mid_index
    #     p "new low is #{low_index}"
    #     mid_index = mid_index + ((high_index - low_index) / 2)
    #     p "new mid is #{mid_index}"
    #   elsif target < array[mid_index]
    #     high_index = mid_index
    #     p "new high is #{high_index}"
    #     mid_index = (high_index - low_index) / 2
    #     p "new mid is #{mid_index}"
    #   end
    # end
    # return true if target == array[mid_index]
  end

  # search for valid target below mid
  p binary_search_iterative(3, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return index 2

  # search for valid target above mid
  p binary_search_iterative(7, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return index 6

  # search for invalid target below mid
  p binary_search_iterative(2, [1, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return false

  # search for invalid target above mid
  p binary_search_iterative(7, [1, 2, 3, 4, 5, 6, 8, 9, 10])
  #=> expect to return false

  # search for target outside lower bound
  p binary_search_iterative(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return false

  # search for target outside upper bound
  p binary_search_iterative(11, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
  #=> expect to return false

  def binary_search_recursive(target, array)
    # magic
  end
