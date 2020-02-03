# Your Code Here
def map(source_array)
new_array = []
i = 0

  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1

  end
  new_array
end


def reduce(source_array, starting_point = nil)

  if starting_point
    total = starting_point
  else
    total = source_array[0]
    i = 1
  end
  while i < source_array.length
    total = yield(total, source_array[i])
    i += 1
  end
  total

end




# it "returns a running total when not given a starting point" do
#   source_array = [1,2,3]
#   expect(reduce(source_array){|memo, n| memo + n}).to eq(6)
# end
#
# it "returns a running total when given a starting point" do
#   source_array = [1,2,3]
#   starting_point = 100
#   expect(reduce(source_array, starting_point){|memo, n| memo + n}).to eq(106)
# end
#
# it "returns true when all values are truthy" do
#   source_array = [1, 2, true, "razmatazz"]
#   expect(reduce(source_array){|memo, n| memo && n}).to be_truthy
# end
#
# it "returns false when any value is false" do
#   source_array = [1, 2, true, "razmatazz", false]
#   expect(reduce(source_array){|memo, n| memo && n}).to be_falsy
# end
