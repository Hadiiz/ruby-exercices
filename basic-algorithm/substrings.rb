def substrings(word, dic)
  result = {}
  dic.each do |item|
    arr =  word.downcase.scan(item)
    result[arr[0]] = arr.length if arr.length.positive
  end
  p result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
