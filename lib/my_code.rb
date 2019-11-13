# Your Code Here


def map(source)
  i = 0
  new_array = []
  while i < source.length do
    new_array.push(yield(source[i]))
  i += 1
end
return new_array
end

def reduce(array, sv = nil)
  if sv
    sum = sv
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
