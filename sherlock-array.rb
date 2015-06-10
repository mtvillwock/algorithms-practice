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
# if number of elements is less than 3, return NO
# else, for each element, check if it has elements to the left and right
# sum these elements and compare, returning YES or NO depending on if they are equal sums

cases = gets().rstrip.to_i
def sum_left_equal_sum_right?
  num_of_elements = gets().rstrip
  numbers = gets().rstrip.split(" ")
  p numbers_array = numbers.map { |e| e.to_i  }
  left_sum = 0
  right_sum = 0
  numbers_array.each_with_index do |number, index|
    if index == 0
      next
    elsif numbers_array[index+1] == numbers_array[-1]
      break
    else
    p left_array = (numbers_array[0]..numbers_array[index -1]).to_a
    p right_array = (numbers_array[index + 1]..numbers_array[-1]).to_a
    end
  end
  if left_sum == right_sum
    puts "YES"
  else
    puts "NO"
  end
end
cases.times do
  sum_left_equal_sum_right?
end