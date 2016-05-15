# When done, submit this entire file to the autograder.

# Part 1.
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

def sum_to_n?(integers, sum)
  return false if integers.length <= 1
  integers.uniq.combination(2).map{ |pair| pair.reduce(:+) }.include?(sum)
end

#Part 2

def hello(name)
  "Hello, #{name}"
end


def starts_with_consonant?(s)
  !!(s =~ /\A[^aeiou\W].*/i)
end


def binary_multiple_of_4?(s)
  return false if s =~ /[^01]/ || s.length == 0
  s.to_i(2) % 4 == 0
end

# PART 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn, @price = isbn, price
  end

  def price_as_string
    format "$%.2f", price
  end
end