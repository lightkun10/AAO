# frozen_string_literal: true

# Write a method, filter_lengths(strings, length), that accepts an array of strings
# and a length as args. The method should return an array containing the strings
# that have at least the given length. The length argument should be optional; if no length
# is passed in, then 5 should be used as the length.

def filter_lengths(strings, length = 5)
  new_arr = []
  i = 0
  while i < strings.length
    new_arr << strings[i] if strings[i].length >= length
    i += 1
  end
  new_arr
end

p filter_lengths(%w[pear dragonfruit fig clementine], 4)   # => ["pear", "dragonfruit", "clementine"]
p filter_lengths(%w[pear dragonfruit fig clementine])      # => ["dragonfruit", "clementine"]
p filter_lengths(%w[cat dog capybara mouse], 7)            # => ["capybara"]
p filter_lengths(%w[cat dog capybara mouse])               # => ["capybara", "mouse"]
