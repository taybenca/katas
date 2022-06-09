# It shows 6 squares the sides of which have a length of 1, 1, 2, 3, 5, 8.
# It's easy to see that the sum of the perimeters of these squares is : 
# 4 * (1 + 1 + 2 + 3 + 5 + 8) = 4 * 20 = 80

# Could you give the sum of the perimeters of all the squares in a rectangle 
# when there are n + 1 squares disposed in the same manner as in the drawing:

# Hint:
# See Fibonacci 

# perimeter(5)  should return 80
# perimeter(7)  should return 216

# Find fibonacci sequence and sum them
def fib(n)
  f1 = 1
  f2 = 1
  @fib_seq = [1, 1]
  while @fib_seq.length < n+1 do
    next_number = f1 + f2
    f2 = f1
    f1 = next_number
    @fib_seq << next_number
  end
  return @fib_seq
end

# Find perimeter
def perimeter(fib_seq)
    return fib_seq.sum * 4
end

fib(7)
puts perimeter(@fib_seq)