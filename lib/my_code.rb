def map(array)
new=[]
i = 0 
while i < array.length 
new << yield(array[i])
i+= 1
  end
  new
end

def reduce(arr,starting_value=nil)

if starting_value
  sum=starting_value
i=0
else 
  sum=arr[0]
  i=1
  end
  while i < arr.length 
 sum= yield(sum,arr[i])
i+= 1
end 
sum
end


###NEED MORE PRACTICE 