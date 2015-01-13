class RockPaperScissors

  RULES =  {"paper" => "scissors", "rock" => "paper", "scissors" => "rock"}

  def self.play(selection)
    return "Tie" if selection == pick
    {message: "Win", chose: selection, competetor: pick}
    message = RULES[selection] == pick ? "Win" : "Lose"
  end

  def self.pick
    ["rock", "paper", "scissors"].sample
  end

end