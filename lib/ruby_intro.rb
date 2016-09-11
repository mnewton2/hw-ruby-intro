# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total = total + x
  end
  return total
end

def max_2_sum arr
  return 0 if arr.size == 0
  return arr[0] if arr.size == 1
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? (arr, n)
  arr.permutation(2).any?{|n1,n2| n1 + n2 == n}
end


# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
