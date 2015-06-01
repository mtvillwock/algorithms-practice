# Problem origin
# https://www.hackerrank.com/challenges/angry-professor

# input:
#  - number of test cases
#  - the total number of students in a given class
#  - the threshold number of students necessary to be present for class not to be canceled
#  - array of space separated integers representing each student's arrival time
# output: "NO" if the number of on-time students is greater than the threshold, otherwise "YES"

#pseudocode:
# students = array of integers
# N = total number of students
# K = lower bound
# if students.reject length is < K, return "YES"
# else return "NO"

def class_canceled?(students, threshold)
  on_time = students.reject { |time| time > 0 }
  on_time.length >= threshold ? "NO" : "YES"
end

def test(cases, student_times, threshold)
  cases = gets().rstrip.to_i
  cases.times do
    odd_line = gets().rstrip
    even_line = gets().rstrip
    threshold = odd_line.split(" ")[1].to_i
    student_times = even_line.split(" ").map! { |el| el.to_i}
    puts class_canceled?(student_times, threshold)
  end
end

# Test code to enter in terminal
# 2
# 4 3
# -1 -3 4 2
# 4 2
# 0 -1 2 1
test(k, student_times, n)