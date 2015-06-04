# Problem origin
# https://www.hackerrank.com/challenges/find-digits

# input:
#  - number of test cases T
#  - given integer N

#pseudocode:
# - find digits in number that exactly divide N (leaving 0)
# - count same number twice if repeated
# - dividing by 0 is undefined
# - build array of valid digits to test
# - starting with counter at 1, check reminder of input divided by counter
# - increment output for each time the remainder of input % counter == 0

def find_digits(number)
  digits = number.to_s.chars.map { |el| el.to_i }
  count = 0
  digits.each do |digit|
    if digit == 0
      next
    else
      count +=1
    end
  end
  p count
end

cases = gets().rstrip.to_i
cases.times do
  number = gets().rstrip
  find_digits(number)
end

# Example Input (number of test cases, followed by individual cases)
# 2
# 12
# 1012

# Expected output (results for each test case)
# 2
# 3