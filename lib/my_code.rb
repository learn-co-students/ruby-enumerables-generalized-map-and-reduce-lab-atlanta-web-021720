# Your Code Here
require 'pry'

def map(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end


def reduce(source_array, starting_value = 0)
  if source_array[0] == false 
     starting_value = false 
  end

  i = 0
  while i < source_array.length do
    starting_value = yield(starting_value, source_array[i])
    i += 1
  end
starting_value
end