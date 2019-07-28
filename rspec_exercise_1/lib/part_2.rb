# Todo: Use i = array.length -1, i -= 1, i >= 0
def hipsterfy(word)
  vowels = 'aeiou'
  i = word.length - 1
  while i >= 0
    if vowels.include? word[i]
      word[i] = ''
      return word
    end
    i -= 1
  end
  word
end

def vowel_counts(sentence)
  vowels = 'aeiou'
  count = Hash.new(0)
  sentence.downcase.each_char do |char|
    count[char] += 1 if vowels.include? char
  end
  count
end

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  ciphered = ""

  str.each_char do |char|
    if !alphabet.include? char
      ciphered += char
    else
      ciphered += alphabet[(alphabet.index(char) + num) % 26]
    end
  end
  ciphered
end
