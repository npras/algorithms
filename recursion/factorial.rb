# n! = n * (n - 1)!
def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end


p factorial(5) # 5 * 4 * 3 * 2 * 1
p factorial(10) # 3628800
