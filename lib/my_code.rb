def map(array)
  new = []
  i = 0
  while i < array.size
    new << yield(array[i]) # passing in each element by using an argument here
  i += 1
  end
  new
end

def reduce(array, sv=nil) # make it nil so that it's totally optional and will work when there is just 1 arguement passed in
# check to see if there's  sv
  if sv
    sum = sv #setting a variable for that number so test can pass it in.
    i = 0 # counter for the array
  else
    sum = array[0] #set sum to= first element of the array like as if sv wasn't there
    i = 1 # already starting with 0 so need to set counter to 1 to move on to the next one
  end

#now we loop over our array to return the sum of these values
  while i < array.size
    sum = yield(sum, array[i])
    i += 1 # we want to send num1 and each element of the array into the block
  end
  sum
end
