# Problem origin: https://www.hackerrank.com/challenges/sherlock-and-array

# input
# number of test cases
# number of elements in array
# space separated integers, denoting the array

# output
# print yet if array contains element where sum of its elements on its left is equal to sum of its elements on the right

# example input
# 2
# 3
# 1 2 3
# 4
# 1 2 3 3
# example output
# NO
# YES

# psuedocode
# for each element, sum the range of elements to its left and right
# return YES or NO depending on if left range and right range have equal sums

cases = gets().rstrip.to_i
def sum_left_equal_sum_right?
  num_of_elements = gets().rstrip
  numbers = gets().rstrip.split(" ")
  numbers_array = numbers.map { |e| e.to_i  }
  left_sum = 0
  right_sum = 0
  numbers_array.each_with_index do |num, index|
    p "index is: #{index}"
    p "current num is: #{num}"
    if index == 0
      next
    elsif index == numbers_array.length - 1
      break
    elsif index == 1
      left_sum = numbers_array[0]
      right_sum = (numbers_array[index + 1]..numbers_array[-1]).reduce(:+)
    else
      left_range = (numbers_array[0]...numbers_array[index])
      right_range = (numbers_array[index + 1]..numbers_array[-1])
      p "left_range is #{left_range}"
      p "right_range is #{right_range}"
      left_sum = left_range.reduce(:+)
      right_sum = right_range.reduce(:+)
    end
  end
  p "post-loop, right sum is #{right_sum} and left sum is #{left_sum}"
  if left_sum == right_sum
    puts "YES"
  else
    puts "NO"
  end
end
cases.times do
  sum_left_equal_sum_right?
end
