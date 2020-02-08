  # it "returns an array with all values made negative" do
  #   expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
  
def map(array)
  new = [ ]
  index = 0 
    while index < array.length do
      new.push(yield(array[index]))
      index += 1
    end
  new
end

# describe 'my own reduce' do
#   it "returns a running total when not given a starting point" do
#     source_array = [1,2,3]
#     expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
#   end

def reduce(array, starting_point = nil)
  if starting_point
    total = starting_point
    index = 0
  else 
    total = array[0]
    index = 1
  end 
  
    while index < array.length do
      total = yield(total, array[index])
      index += 1
    end
    
  total
end 