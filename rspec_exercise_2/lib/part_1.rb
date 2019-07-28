def partition(array, num)
  two_d = [[], []]
  array.each do |element|
    if element >= num
      two_d[1] << element
    else
      two_d[0] << element
    end
  end
  two_d
end

def merge(hash_1, hash_2)
  merged = Hash.new(0)
  hash_1.each do |key, val|
    merged[key] = val
  end
  hash_2.each do |key, val|
    merged[key] = val
  end
  merged
end

def censor(sentence, dirty_words)
  vowels = 'aeiouAEIOU'
  sentence = sentence.split(' ')
  bad_words = []

  dirty_words.each do |word|
    bad_words << word
    caps = word.upcase
    bad_words << caps
    title_case = word.capitalize
    bad_words << title_case
  end
  sentence.each do |word|
    if bad_words.include?(word)
      word.each_char.with_index do |_char, i|
        if vowels.include?(word[i])
          word[i] = "*"
        end
      end
    end
  end
  sentence.join(" ")
end

def power_of_two?(num)
  num != 0 && (num & (num - 1)) == 0
end
