# Your Code Here
def map(source_array)
  new_array = []
  counter = 0
  while counter < source_array.length do
  new_array << yield(source_array[counter])
  counter += 1
  end
new_array
end

def reduce(source_array, starting_value = nil)
if starting_value
  sum = starting_value
  counter = 0
else
  sum = source_array[0]
  counter = 1
end
  while counter < source_array.length
    sum = yield(sum, source_array[counter])
    counter += 1
  end
  sum
end
