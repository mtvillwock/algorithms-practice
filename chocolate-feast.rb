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
# have wrappers equal to chocolates bought and compare with exchange rate
# while wrappers plus bonus chocolates are higher or equal to the exchange rate
# take the divmod of wrappers plus bonus chocolates
# -set bonus chocolates equal to the quotient and wrappers equal to the remainder
# add bonus chocolates to the total chocolates
# print the total

def count_chocolates
  (dollars, cost, exchange_rate) = gets().split.map{|i| i.to_i}
  total_chocolates_eaten = dollars / cost
  bonus_chocolates = 0
  wrappers = total_chocolates_eaten
  while (wrappers + bonus_chocolates) >= exchange_rate do
      # bonus_chocolates is the quotient of this equation
      # wrappers are the remainder, e.g., 3 /2 leaves 1 wrapper
      bonus_chocolates, wrappers = (wrappers + bonus_chocolates).divmod(exchange_rate)
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
