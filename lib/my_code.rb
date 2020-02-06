# Your Code Here
def map(array)
  negative_array = []
  n = 0
  while n < array.length do
    negative_array.append(yield(array[n]))
    n += 1
  end
  negative_array
end

def reduce(array, start_value=nil) #start value optional
  if start_value
    total = start_value
    n = 0
  else
    total = array[0]
    n = 1
  end
  while n < array.length do
    total = yield(total, array[n])
    n += 1
  end
  total
end 
