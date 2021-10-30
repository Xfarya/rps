class Game

  attr_accessor :choice, :opponent

  def initialize(choice)
    @choice = choice
    opponent_choice
  end

  def opponent_choice
     @opponent = ["Rock", "Paper", "Scissors"].sample
  end

  def winner
    wins = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
    case
      when @choice == @opponent then return "It's a draw!"
      when wins[@choice] == @opponent then return "You win!"
      when wins[@opponent] == @choice then return "Computer wins!"
    end
  end

end