def map (array)
 map_arr = []

array.each do |x|
	map_arr.push(yield x)
 end

 return map_arr
end

def reduce (array, starting_point = 0)
  sum = starting_point

  array.each do |value|
    sum = yield(sum, value)

    if (!value)
      return false
    end
  end



  return sum
end
