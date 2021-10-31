class Game

  attr_accessor :choice, :opponent

  def initialize(choice)
    @choice = choice
    opponent_choice
  end

  def opponent_choice
     @opponent = ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
  end


  def self.create(choice)
      @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  def winner
    winning = { "Rock" => "Scissors", "Spock" => "Rock", "Paper" => "Spock",  "Lizard" => "Paper", "Scissors" => "Lizard", "Spock" => "Scissors", "Rock" => "Lizard", "Lizard" => "Spock", "Scissors" => "Paper", "Paper" => "Rock" }
    if @choice == @opponent
      "it's a draw"
    elsif
      winning[@choice] == @opponent 
      "You win!"      
    else
      "Computer wins!" 
    end
  end

end