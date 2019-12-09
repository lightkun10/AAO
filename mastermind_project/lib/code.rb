# frozen_string_literal: true

class Code
  POSSIBLE_PEGS = {
    'R' => :red,
    'G' => :green,
    'B' => :blue,
    'Y' => :yellow
  }.freeze

  attr_reader :pegs

  def initialize(pegs)
    @pegs = pegs.map(&:upcase)
    raise 'invalid pegs' unless Code.valid_pegs?(pegs)
  end

  def self.valid_pegs?(characters)
    characters.each do |character|
      return false unless POSSIBLE_PEGS.include? character.upcase
    end
    true
  end

  def self.random(number)
    pegs = Array.new(number) do
      POSSIBLE_PEGS.keys.sample
    end
    Code.new(pegs)
  end

  def self.from_string(string)
    Code.new(string.split(''))
  end

  def [](idx)
    @pegs[idx]
  end

  def self.length
    @pegs.length
  end

  def self.num_exact_matches(guess)
    count = 0
    i = 0
    while i < guess.length
      count += 1 if guess[i] == @pegs[i]
      i += 1
    end
    count
  end

  def self.num_near_matches(guess)
    count = 0

    (0...guess.length). each do |i|
      count += 1 if guess[i] != @pegs[i] && pegs.include?(guess[i])
    end
    count
  end

  def ==(another_code)
    pegs == another_code.pegs
  end
end
