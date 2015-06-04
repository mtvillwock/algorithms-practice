# Problem origin
# https://www.hackerrank.com/challenges/find-digits

# input:
#  - number of test cases T
#  - given integer N

#pseudocode:
# - find digits in number that exactly divide N (leaving 0)
# - count same number twice if repeateds
# - dividing by 0 is undefined

cases = gets().rstrip.to_i
cases.times do
  input = gets().rstrip.to_i
  # algorithm
  puts output
end

# Example Input (number of test cases, followed by individual cases)

# Expected output (results for each test case)
