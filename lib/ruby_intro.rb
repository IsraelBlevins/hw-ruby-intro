# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each { |n| sum += n}
  return sum
end

def max_2_sum(arr)
  if(arr.size() == 0)
    return 0
  end
  if(arr.size() == 1)
    return arr[0]
  end
  
  sum = 0
  maxs = arr.max(2)
  sum = maxs[0] + maxs[1]
  return sum
end

def sum_to_n?(arr, n)
  if(arr.size() <= 1)
    return false
  end
  
  for i in arr 
    for j in arr
      if(i+j == n and i != j)
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, ".concat(name)
end

def starts_with_consonant? s
  if(s.size == 0)
    return false
  end
  
  return /[^[:punct:]aeiou0-9]/ix.match?(s[0])
end

def binary_multiple_of_4? s
  if(/[[:alpha:][:punct:][:space:]]/i.match?(s) == true or s.size == 0)
    return false
  end
  
  return s.to_i(base=2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(i, p)
    raise ArgumentError, 'ISBN can not be an empty string' unless i.size > 0
    raise ArgumentError, 'PRICE can not be negative or zero' unless p > 0
    
    @isbn = i
    @price = p
  end
  
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  def isbn=(i)
    @isbn = i
  end
  
  def price=(p)
    @price = p
  end
  
  def price_as_string
    return "$".concat('%.2f' % @price)
  end
end
