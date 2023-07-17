# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|item|
    sum += item
  }
  return sum
end

def max_2_sum arr
  sum = 0
  count = 0
  arr.sort! {|first_num, second_num| second_num <=> first_num}
  arr.each {|num|
    sum += num
    count += 1
    break if count == 2
  }
  return sum
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  for first_index in 0...arr.length - 1
    for second_index in (first_index + 1)...arr.length
      if arr[first_index] + arr[second_index] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.match /^([aeiou\W\d]|$)/i
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s.match /^(0|^[01]*00)$/
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length > 0 && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end

  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    if new_isbn.length > 0
      @isbn = new_isbn
    else
      raise ArgumentError
    end
  end

  def price
    @price
  end
  def price=(new_price)
    if price > 0
      @price = new_price
    else
      raise ArgumentError
    end
  end

  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
