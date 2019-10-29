class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow,
  }

  attr_reader :pegs

  def initialize(pegs)
    @pegs = pegs.map(&:upcase)
    if !Code.valid_pegs?(pegs)
      raise "invalid pegs"
    end
  end

  def self.valid_pegs?(characters)
    characters.each do |character|
      if !POSSIBLE_PEGS.include? (character.upcase)
        return false
      end
    end
    true
  end

  def self.random(number)
    pegs = Array.new(number) {
      POSSIBLE_PEGS.keys.sample
    }
    Code.new(pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    i = 0
    while i < guess.length
      count += 1 if guess[i] == @pegs[i]
      i += 1
    end
    count
  end
end
