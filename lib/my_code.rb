# Your Code Here
arr = [1,2,3]
def map(source_array)
  result =[]
  source_array.each do |element|
    result<<yield(element)
  end
  result
end
def reduce(source_array,starting_point=0)
  source_array.each do |element|
    starting_point = yield(element,starting_point)
  end
  starting_point ? starting_point : false
end
