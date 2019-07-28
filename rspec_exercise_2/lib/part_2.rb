def palindrome?(word)
  reversed = ''
  i = 0
  while i < word.length
    reversed = word[i] + reversed
    i += 1
  end
  reversed == word
end

def substrings(string)
  substring = []
  (0...string.length).each do |iterator|
    (iterator...string.length).each do |jitterator|
      substring << string[iterator..jitterator]
    end
  end
  substring
end

def palindrome_substrings(string)
  strings = substrings(string)
  drome_sub = []
  strings.each do |substr|
    if substr.length > 1 
      if palindrome?(substr)
        drome_sub << substr
      end
    end
  end 
  drome_sub
end