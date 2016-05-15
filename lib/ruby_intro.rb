# When done, submit this entire file to the autograder.

# Part 1
# Define a method sum(array) that takes an array of integers
# as an argument and returns the sum of its elements.
# For an empty array it should return zero.
def sum arr
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  sum arr.sort.pop(2)
end

def sum_to_n? arr, n
  arr.comninotion(2).each{|c| return true if (c[0] + c[1] == n)}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
  return false unless s =~ /^[0]+$/
  s.to_i(2) % 4 ==0
end

# Part 3

class BookInStock
  
end