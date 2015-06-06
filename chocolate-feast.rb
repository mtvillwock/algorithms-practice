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

def count_chocolates
  (dollars, cost, exchange_rate) = gets().split.map{|i| i.to_i}
  total_chocolates_eaten = dollars / cost
  bonus_chocolates = 0
  wrappers = total_chocolates_eaten
  while (wrappers + bonus_chocolates) >= exchange_rate do
      bonus_chocolates = (bonus_chocolates + wrappers) / exchange_rate
      wrappers = wrappers / exchange_rate
      total_chocolates_eaten += bonus_chocolates
    end
    puts total_chocolates_eaten
  end

  t = gets.to_i
  t.times do
    count_chocolates
  end

# Test input
# 3
# 10 2 5
# 12 4 4
# 6 2 2