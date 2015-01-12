class RockPaperScissors

  RULES =  {"scissors" => "paper", "paper" => "rock", "rock" => "scissors"}

  def self.play(selection)
    return "Tie" if selection == pick
    message = RULES[selection] == pick ? "Win" : "Lose"
    {message: message, chose: selection, competetor: pick}
 
  end

  def self.pick
    ["rock", "paper", "scissors"].sample
  end

end