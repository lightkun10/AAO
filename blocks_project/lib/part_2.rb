def all_words_capitalized?(array)
  array.all? { |el| el == el.capitalize }
end

def no_valid_url?(array)
  array.none? {|el| [".com", ".net", ".io", ".org"].any? { |ending| el.end_with?(ending)} }
end

def any_passing_students?(array)
  array.any? { |el| el[:grades].sum / el.length.to_f >= 75 }
end
