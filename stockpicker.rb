def stock_picker(arr)
  result = [arr[0], arr[1]]
  arr.each_with_index do |item, index|
    substring  = arr[index+1...]
    substring.each do |sub_item|
      diff = sub_item - item
      if diff > result [1] - result[0]
        result[0] = item
        result[1] = sub_item
      end
    end
  end
  return result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])