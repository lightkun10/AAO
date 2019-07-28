# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(number)
  lpf = 0
  i = 2
  while i <= number
    if ((number % i == 0) && prime?(i)) 
      lpf = i
    end
    i += 1
  end
  lpf
end

def prime?(num)
	if num < 2
		return false
  end
	(2...num).each do |int|
		if num % int == 0
			return false
    end
  end
	true
end

def unique_chars?(word)
  counter = Hash.new(0)
  word.each_char { |char| counter[char] += 1 }
  counter.each do |_letter, number|
    if number >= 2
			return false
    end
  end
  true
end 

def dupe_indices(array)
  counter = Hash.new{ |h,k| h[k] = [] }
  final = Hash.new { |h,k| h[k] = [] }
  array.each_with_index { |char, i| counter[char] << i } 
  counter.each do |letter, indeces|
    if indeces.length >= 2
      indeces.each { |ele| final[letter] << ele}
    end
  end
  final
end

def ana_array(array_1, array_2)

  i = 0
  while i < array_2.length
    return false if !array_1.any? array_2[i]
    i += 1
  end
  i = 0
  while i < array_1.length
      return false if !array_2.any? array_1[i]
      i += 1
  end
  true
end