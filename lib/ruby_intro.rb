# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1]+arr[-2]
  end
end

def sum_to_n? arr, n
  arrlen = arr.length()
  if arrlen < 2
    return false
  end
  for a in 0..(arrlen-2) do
    for b in (a+1)..(arrlen-1) do
      if arr[a]+arr[b] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  str = "Hello, " + name
  return str
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  if s[0].match(/[a-zA-Z]/)
    if s[0].match(/[aeiouAEIOU]/)
      return false
    end
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  if s !~ /[^01]/
    temp = s.to_i(2)
    if temp % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    else
      @BIS_isbn, @BIS_price = isbn, price
    end
  end
  
  def price_as_string
    result = "$%0.2f" % [@BIS_price]
  end
  
  #getter
  def price
    @BIS_price
  end
  def isbn
    @BIS_isbn
  end
  
  #setter
  def price=(price)
    @BIS_price = price
  end
  def isbn=(isbn)
    @BIS_isbn = isbn
  end
end