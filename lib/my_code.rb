
def map(source_array)
  new_array = []
  array_index = 0 
  while array_index < source_array.length do 
    new_array << yield(source_array[array_index])
    array_index += 1 
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

  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end
  return sum
end