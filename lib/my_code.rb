# Your Code Here
def map(array)
empty_array = []
counter = 0 
while counter < array.length
  empty_array << yield(array[counter])
  counter += 1
end
 empty_array
end 

def reduce(array, starting_value = nil)
 if starting_value
   sum = starting_value
   counter = 0
 else
   sum = array[0]
   counter = 1
 end
 while counter < array.length 
  sum = yield(sum, array[counter])
  counter += 1
 end
 sum
end 