# frozen_string_literal: true

def average_of_three(num1, num2, num3)
  sum = num1 + num2 + num3
  avg = sum / 3.0
  avg
end

puts average_of_three(3, 7, 8)   # => 6.0
puts average_of_three(2, 5, 17)  # => 8.0
puts average_of_three(2, 8, 1)   # => 3.666666

puts 0.even?
