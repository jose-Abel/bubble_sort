def bubble_sort_by(arr)

  a = arr.length()
  while a > 0
    noSwaps = true
    b = 0
    while b < a - 1
      left = arr[b]
      right = arr[b + 1]
      result = yield(left,right)
        if result > 0
          arr[b], arr[b + 1] = arr[b + 1], arr[b]
          noSwaps = false
        end
      b += 1
    end
    break if noSwaps
    a -= 1
  end
  puts arr
end


bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end