=begin
Michael Newton
09/11/2016
hw-ruby-intro
Software Engineering
=end

# Part 1

def sum arr
  total = 0
  arr.each {|x| total += x}
  return total
end

def max_2_sum arr
  return 0 if arr.size == 0
  return arr[0] if arr.size == 1
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? (arr, n)
  arr.permutation(2).any?{|pair| sum(pair) == n}
end


# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  end
end

def binary_multiple_of_4? s
  dec = s.to_i
  return false if s.length == 0
  return true if ((s =~ /^[01]/)  && (dec % 4 == 0))
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if price <= 0
      raise ArgumentError, "Price Too Small"
    elsif isbn.length <=0
      raise ArgumentError, "ISBN invalid"
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string 
    currencyForm = "$%.2f" % @price
    return currencyForm
  end
  
end
