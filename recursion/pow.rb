# non-recursive
def non_recursive_pow(x, y)
  result = 1
  y.times do
    result *= x
  end
  result
end


# recursive
# 2**4 = 2**3 * 2
def pow(x, y)
  return x if y == 1
  x * pow(x, y - 1)
end


p pow(2, 2) # 4
p pow(2, 3) # 8
p pow(2, 4) # 16
p pow(2, 5) # 32
p pow(9, 2) # 81
