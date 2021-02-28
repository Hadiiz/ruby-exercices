def substrings(word, dic)
  result = {}
  for item in dic do
    arr =  word.downcase.scan(item)
    if arr.length > 0
      result[arr[0]] = arr.length
    end
  end
  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
