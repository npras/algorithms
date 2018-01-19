# [3, 1] [2, 4]
# s = []
# s = [2] # 3 < 2
# [2, 3, 1, 4]
def mergesort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  arr_left = mergesort(arr.take(mid))
  arr_right = mergesort(arr.drop(mid))

  merge(arr_left, arr_right)
end


def merge(left, right)
  p "l: #{left.size}, r: #{right.size}"
  sorted = []
  loop do
    break if (left.empty? || right.empty?)
    elem = (left.first < right.first) ? left.shift : right.shift
    sorted << elem
  end
  sorted + left + right
end


p mergesort [4, 3, 2, 10]
#p mergesort [4, 3, 2, 10, 1]
#p mergesort [4, 92, 1, 39, 19, 93, 49, 10]
