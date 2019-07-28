# frozen_string_literal: true

# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  str = str.each_char.with_object([]) { |a, r| (r.last&.end_with?(a) ? r.last : r) << a }
  compressed = ''
  str.each do |word|
    compressed += if word.length > 1
                    word.length.to_s + word[0]
                  else
                    word[0]
                  end
  end
  compressed
end

p compress_str('aaabbc')        # => "3a2bc"
p compress_str('xxyyyyzz')      # => "2x4y2z"
p compress_str('qqqqq')         # => "5q"
p compress_str('mississippi')   # => "mi2si2si2pi"
