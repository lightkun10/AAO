# frozen_string_literal: true


require "byebug"
# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if empty?

    arr = sort
    arr[arr.length - 1] - arr[0]
  end

  def average
    return nil if empty?

    sum / length.to_f
  end

  def median
    return nil if empty?

    arr = sort
    return arr[arr.length / 2] if arr.length.odd?

    (arr[(arr.length / 2) - 1] + arr[arr.length / 2]) / 2.0
  end

  def counts
    counter = Hash.new(0)
    each { |ele| counter[ele] += 1 }
    counter
  end

  def my_count(number)
    counts[number]
  end

  def my_index(number)
    i = 0
    while i < self.length
      return i if self[i] == number
      i += 1
    end
  end

  def my_uniq
    uniq = []
    each { |letter| uniq << letter unless uniq.include?(letter) }
    uniq
  end

  def my_transpose

    arr = self

    new_arr = Array.new(arr.length){Array.new(arr[0].length)}

    arr.each_with_index do |row, row_index|
      row.each_with_index do |_column, col_index|
        new_arr[row_index][col_index] = arr[col_index][row_index]
      end
    end
    new_arr
  end
end

# transpose
    # _array = @array.dup
    # @array = [].tap do |a|
    #   _array.size.times{|t| a << [] }
    # end
    # _array.each_with_index do |row, row_index|
    #   row.each_with_index do |column, col_index|
    #     @array[row_index][col_index] = _array[col_index][row_index]
    #   end
    # end
# p ["a", "b", "b"].my_uniq
