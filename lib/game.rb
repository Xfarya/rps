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
    winning = { 
      "Spock" => "Rock", 
      "Paper" => "Spock",  
      "Lizard" => "Paper", 
      "Scissors" => "Lizard", 
      "Spock" => "Scissors", 
      "Rock" => "Lizard", 
      "Rock" => "Scissors",
      "Lizard" => "Spock", 
      "Scissors" => "Paper", 
      "Paper" => "Rock" 
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