# frozen_string_literal: true

# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(array)
  arr = []
  arr << array[0] if array[0] > array[1]
  (0...array.length - 1).each do |i|
    arr << array[i] if array[i] > array[i + 1] && array[i] > array[i - 1]
  end
  arr << array[-1] if array[-1] > array[-2]
  arr
end

p peak_finder([1, 3, 5, 4])         # => [5] Mine => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10] Mine => []
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10] Mine => [11]
