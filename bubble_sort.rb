def bubble_sort(arr)
  a = arr.length
  while a.positive?
    no_swaps = true
    b = 0
    while b < a - 1
      if arr[b] > arr[b + 1]
        arr[b], arr[b + 1] = arr[b + 1], arr[b]
        no_swaps = false
      end
      b += 1
    end
    
    break if no_swaps
    a -= 1
  end
  arr
end
puts bubble_sort([100, 243, 210, 120, 40, -80, -300, 2, 4])

