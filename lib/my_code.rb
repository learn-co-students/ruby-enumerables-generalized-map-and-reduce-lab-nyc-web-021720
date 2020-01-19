# Your Code Here
arr = [1,2,3,4]
def map(source_array)
  result =[]
  source_array.each do |element|
    result<<yield(element)
  end
  result
end
def reduce(source_array,starting_point=0)
  result = 0
  source_array.each do |element|
    result =
  end
end
