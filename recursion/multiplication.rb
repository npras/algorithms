# x = 5, y = 3
# x times y, is 5 times 3
# 5 times 3 = (4 times 3) + 3
# 5 times 3 = ((3 times 3) + 3) + 3

# x times y

# multiplication is repeated addition
def multiply(x, y)
  return y if x == 1
  y + multiply(x - 1, y)
end

p multiply(3, 5)
p multiply(7, 6)
p multiply(15, 15)
p multiply(19, 18)
