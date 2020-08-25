def bubble_sort_by(arr)
  a = arr.length
  while a.positive?
    no_swaps = true
    b = 0
    while b < a - 1
      left = arr[b]
      right = arr[b + 1]
      result = yield(left, right)
        if result.positive?
          arr[b], arr[b + 1] = arr[b + 1], arr[b]
          no_swaps = false
        end
      b += 1
    end
    break if no_swaps

    a -= 1
  end
  puts arr
end

bubble_sort_by(%w['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end