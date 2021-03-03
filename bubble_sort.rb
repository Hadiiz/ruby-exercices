def bubble_sort(arr)
  (0..arr.length - 2).each do |i|
    (0..arr.length - 2 - i).each do |j|
      next unless arr[j] > arr[j + 1]

      temp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = temp
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2, 1, 4])
