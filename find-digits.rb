# Problem origin
# https://www.hackerrank.com/challenges/find-digits

# input:
#  - number of test cases T
#  - given integer N

#pseudocode:
# - find digits in number that exactly divide N (leaving 0)
# - count same number twice if repeated
# - dividing by 0 is undefined
# - starting with counter at 1, check reminder of input divided by counter
# - increment output for each time the remainder of input % counter == 0

cases = gets().rstrip.to_i
count = 0
iteration = 0
collection = []
cases.times do
  input = gets().rstrip.to_i
  p "input is: #{input}"
  until iteration == input
    iteration += 1
      p "iteration is: #{iteration}"
    remainder = input % iteration
      p "remainder is: #{remainder}"
    if remainder == 0
      collection << iteration
      count +=1
      p "count is: #{count}"
    end
  end
  p "collection pre-uniq method"
  p collection
  collection.uniq!
  p "count of time remainder from modulo == 0"
  puts count
  p "collection count"
  puts collection.count
end

# Example Input (number of test cases, followed by individual cases)
# 2
# 12
# 1012

# Expected output (results for each test case)
# 2
# 3