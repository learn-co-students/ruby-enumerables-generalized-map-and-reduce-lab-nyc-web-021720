    # Your Code Here

def map(array)
new_array = []
counter= 0 
while counter < array.length do 
  new_array.push(yield(array[counter]))
counter += 1 
  end
 new_array
end

def reduce(array, starting_value = nil)
  if starting_value
      sum = starting_value
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