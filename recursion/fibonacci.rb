def fibonacci(n)
  fail "n should be >= 2" if n < 2
  return [0, 1] if n <= 2

  prev = fibonacci(n - 1)
  prev << (prev[-2] + prev[-1])
end


# 
def fibonacci_sum(n)
  #fail "n should be >= 2" if n < 2
  return 1 if n <= 2

  sum = 1
  (n - 2).times do |i|
    p i
  end
end


#p fibonacci(1) # error
#p fibonacci(2) # [0, 1]
#p fibonacci(3) # [0, 1, 1]
#p fibonacci(5) # [0, 1, 1, 2, 3]
#p fibonacci(6) # [0, 1, 1, 2, 3, 5]
#p fibonacci(7) # [0, 1, 1, 2, 3, 5, 8]
#p fibonacci(8) # [0, 1, 1, 2, 3, 5, 8, 13]
#p fibonacci(21) # [0, 1, 1, 2, 3, 5, 8, 13]


#p fibonacci(1) # error
#p fibonacci_sum(2) # [0, 1]
p fibonacci_sum(3) # [0, 1, 1]
#p fibonacci_sum(5) # [0, 1, 1, 2, 3]
#p fibonacci_sum(6) # [0, 1, 1, 2, 3, 5]
#p fibonacci_sum(7) # [0, 1, 1, 2, 3, 5, 8]
#p fibonacci_sum(8) # [0, 1, 1, 2, 3, 5, 8, 13]
#p fibonacci_sum(21) # [0, 1, 1, 2, 3, 5, 8, 13]
