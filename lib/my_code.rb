# Your Code Here

def map(source_array)

  arr = []
  i = 0
  while i < source_array.length do
    arr << yield(source_array[i])
    i += 1
  end
arr
end

map([]) { |n| n * -1}

def reduce(source_array, sv=nil)

  if sv
    sum = sv
    i = 0
  else
    sum = source_array[0]
    i = 1
  end
  while i < source_array.length do
    sum = yield(sum, source_array[i])
    i += 1
  end
 sum
end

# reduce([], 0) { |memo, n| memo + n}

# reduce([], true) {|memo, n| memo && n}
