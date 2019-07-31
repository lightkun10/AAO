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
    transposed = []
    each_with_index do |_ele1, row|
      new_row = []
      each_with_index do |_ele2, col|
        new_row << self[col][row]
      end
      transposed << new_row
    end
    transposed
  end
end


