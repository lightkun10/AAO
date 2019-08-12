class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = @secret_word.split("").fill("_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char) == true
  end

  def get_matching_indices(char)
    @secret_word.split("").each_index.select { |index| @secret_word[index] == char }
  end

  def fill_indices(char, matching_idx)
    matching_idx.each { |idx| @guess_word[idx] = char }
  end
end

# get_matching_indices A.each_index.select { |index| A[index] == 1 }
