def quicksort(arr)
  return arr if arr.size <= 1

  pivot = arr.sample
  arr.delete_at arr.index(pivot)
  lowers, highers = arr.partition { |e| e < pivot }
  quicksort(lowers) + Array(pivot) + quicksort(highers)
end


p quicksort [4, 3, 2, 10]
p quicksort [4, 3, 2, 10, 1]
p quicksort [4, 92, 1, 39, 19, 93, 49, 10]
