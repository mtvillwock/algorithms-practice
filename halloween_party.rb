# Problem origin
# https://www.hackerrank.com/challenges/halloween-party

# input:
#  - number of test cases T
#  - integer K (number of times chocolate bar can be cut)
#  - pieces must be 1x1
# output: T lines, each line is an integer showing max number of pieces per that test case

#pseudocode:
# determine number of horizontal and vertical slices
# -- divide input by 2, if it is even horizontal and vertical will match, if it is odd, subtracting horizontal from input to get vertical will ensure proper totals
# multiple horizontal and vertical slices to get output

cases = gets().rstrip.to_i
cases.times do
  input = gets().rstrip.to_i
  horizontal = input / 2
  vertical = input - horizontal
  p output = horizontal * vertical
end

# Example Input (number of test cases, followed by individual cases)
# 4
# 5
# 6
# 7
# 8

# Expected output (results for each test case)
# 6
# 9
# 12
# 16