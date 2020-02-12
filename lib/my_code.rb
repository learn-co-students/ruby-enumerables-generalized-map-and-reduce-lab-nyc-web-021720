def map(arr)
  i = 0 
  a = []
   while i < arr.length 
   a << yield(arr[i])
   i += 1
end
a
end


def reduce(array, optional = nil)
  if optional
    sum = optional
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end
    while i < array.length
  sum = yield(sum, array[i])
    i += 1
end
sum 
end