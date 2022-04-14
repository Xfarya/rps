class Game

  attr_accessor :choice, :opponent

  def initialize(choice)
    @choice = choice
    opponent_choice
  end

  def opponent_choice
     @opponent = ["rock", "paper", "scissors", "spock", "lizard"].sample
  end


  def self.create(choice)
      @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  def winner
    winning = { 
      "spock" => "rock", 
      "paper" => "spock",  
      "lizard" => "paper", 
      "scissors" => "lizard", 
      "spock" => "scissors", 
      "rock" => "lizard", 
      "rock" => "scissors",
      "lizard" => "spock", 
      "scissors" => "paper", 
      "paper" => "rock", 
    }
   if winning[@choice] == @opponent 
      "You win!"      
   elsif  @choice == @opponent
      "It's a draw"
   else
      "Computer wins!" 
    end
  end

end
