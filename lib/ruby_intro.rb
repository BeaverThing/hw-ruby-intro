# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  if(arr.empty?)
    x = 0
  else
    arr.each{ |a| x = x + a}
  end
  x
end

def max_2_sum arr
  x = 0
  if(arr.empty?)
    x = 0
  elsif(arr.count == 1)
    x = arr[0]
  else 
    temp = arr.sort
    x = temp.last + temp[temp.count - 2]
  end
end

def sum_to_n? arr, n
  res = false
  if(arr.count <= 1)
    res = false
  else
    iterate = 0
    arr.each do |i|
      temp = arr[(iterate+1)..arr.count-1]
      temp.each do |j|
        if(j+i == n)
          res = true
        end
      end
      iterate = iterate + 1
    end
  end
  res
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.upcase =~ /^('?[BCDFGHJKLMNPQRSTVWXYZ])/
end

def binary_multiple_of_4? s
  if(s == '' || s =~ /[^10]+/)
    res = false
  elsif(s == '0')
    res = true
  elsif(s =~ /(10)$/ || s =~ /(01)$/)
    res = false
  else
    res = true
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if(isbn != '')
      @isbn = isbn
    else
      raise ArgumentError.new("ISBN must not be empty")
    end
    if(price > 0)
      @price = price
    else
      raise ArgumentError.new("Price must be greater than 0")
    end
  end
  
  def isbn
    @isbn
  end
  def isbn=(new_Isbn)
    if(new_Isbn == '')
      raise ArgumentError.new("ISBN must not be empty")
    else
      @isbn = new_Isbn
    end
  end
  
  def price
    @price
  end
  def price=(new_Price)
    if(new_Price <= 0)
      raise ArgumentError.new("Price must be greater than 0")
    else
      @price = new_Price
    end
  end
  
  def price_as_string
    res = "$"
    if(@price * 10 == (@price * 10).floor) # No units place cent
      if(@price * 10 == (@price.floor * 10)) # No tens place cent
        res = res + @price.to_s + ".00"
      else
        res = res + @price.to_s + "0"
      end
    else
      res = res + @price.to_s
    end
  end
  
end
