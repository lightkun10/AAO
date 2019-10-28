class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(characters)
    characters.each do |character|
        if !POSSIBLE_PEGS.include?(character.upcase)
          
          return false
        end
      # { |char| Code::POSSIBLE_PEGS.include?(char.upcase) }
    end
    true
  end

end
