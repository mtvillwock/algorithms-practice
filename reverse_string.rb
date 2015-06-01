# input: string
# output: reverse string

# pseudocode:
# - find first letter and last letter of string, assign value to counters
# - switch first and last letter
# - repeat process, incrementing and decrementing counters until string is reversed (when incrementing counter is greater than or equal to decrementing counter)

def reverse(string)
  str = string
  i = 0
  x = str.length-1
  until i >= x do
    str[i], str[x] = str[x], str[i]
    i += 1
    x -= 1
  end
  return str
end

p reverse("foobar")