def fibonacci(n)
  case
  when n == 1
    return [0]
  when n == 2
    return [0, 1]
  when n > 2
    return fibonacci(n - 1).yield_self { |r| r << r[-2..-1].sum }
  end
end

p fibonacci(1) # [0]
p fibonacci(2) # [0, 1]
p fibonacci(3) # [0, 1, 1]
p fibonacci(5) # [0, 1, 1, 2, 3]
p fibonacci(6) # [0, 1, 1, 2, 3, 5]
p fibonacci(7) # [0, 1, 1, 2, 3, 5, 8]
p fibonacci(8) # [0, 1, 1, 2, 3, 5, 8, 13]
p fibonacci(21) # [0, 1, 1, 2, 3, 5, 8, 13]
