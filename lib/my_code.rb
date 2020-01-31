require "pry"
 def map(array)
new_array = []
i = 0 

while i < array.length
 new_array << (yield(array[i]))
  i += 1  
end

 return new_array 
 end
 
 [1, 2, 3, -9].map do |i| 

   i * -1
 end
   
   
 def   reduce(source_array, starting_point = nil)
   if  !starting_point
     sum = source_array[0]
       x = 1
   else
      sum = starting_point 
      x = 0
     
   end
   while x < source_array.length 
   sum = yield(sum,source_array[x])
  
     x += 1
 end
 # binding.pry
  return sum
  
end
#reduce([5,8,9])
[ false, nil, nil, nil, true].reduce do |x| 
  end

