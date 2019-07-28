require "byebug"

def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(array)
  array.reject { |ele| ele['age'] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |sub| sub.sum.positive? }
end

def aba_translate(word)
  vowels = 'aeiou'
  word_2 = ''

  word.each_char do |char|
    if vowels.include?(char)
      word_2 += char + 'b' + char
    else
      word_2 += char
    end
  end
  word_2
end

def aba_array(array)
  new_array = array.map { |word| aba_translate(word) }
end