# Problem origin
# https://www.hackerrank.com/challenges/chocolate-feast

# input:
#  - number of test cases
#  - N - money
#  - C - price of chocolate
#  - M - number of wrappers for to exchange for a free chocolate
# output:
# - number of chocolates eaten

# Pseudocode
# divide money by price of chocolate to get number of candy bars
# if number of candy bars is a multiple of M, add that multiple to output
#

t = gets.to_i
t.times{
  (n, c, m) = gets.split.map{|i| i.to_i}
  answer = 0
  p n, c, m
  p remainder = n / c
  p bonus = m.divmod(remainder)
  answer = remainder + bonus[0]
        # Write code to Compute Answer
        puts answer
      }

# def
# end

# cases = gets().rstrip.to_i
# cases.times do
#   number = gets().rstrip.to_i
#   find_digits(number)
# end