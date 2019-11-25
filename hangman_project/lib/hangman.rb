class Hangman
  DICTIONARY = [ "cat", "dog", "bootcamp", "pizza"]

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
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    @secret_word.split("").each_index.select { |index| @secret_word[index] == char }
  end

  def fill_indices(char, matching_idx)
    matching_idx.each { |idx| @guess_word[idx] = char }
  end

  def try_guess(char)
    array = get_matching_indices(char)
    if array.empty?
      @remaining_incorrect_guesses -= 1
    end
    if already_attempted?(char)
      p "that has already been attempted"
      false
    else
      @attempted_chars << char
      fill_indices(char, array)
      true
    end
  end

  def ask_user_for_guess
    p "Enter a char:"
    # guess = gets.chomp
    try_guess(gets.chomp)
  end

  def win?
    if @guess_word.join("") == @secret_word
      p "WIN"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      p "LOSE"
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      p @secret_word
      true
    else
      false
    end
  end
end
