# Your Code Here
def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(source_array, starting_val = nil)
  if starting_val
    i = 0
    sum = starting_val
  else
    sum = source_array[0]
    i = 1
  end
  while i < source_array.length
    sum = yield(sum, source_array[i])
    i += 1
  end
  sum
end
