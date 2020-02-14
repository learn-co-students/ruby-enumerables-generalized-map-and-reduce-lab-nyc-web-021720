# Your Code Here
def map(array)
  new = []
  counter = 0 
  while counter < array.length do 
     new.push(yield (array[counter])) 
     counter += 1 
  end 
new 
end 

def reduce(array, starting_point = nil)
  if starting_point  
     sum = starting_point
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