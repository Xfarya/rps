class Game

  attr_accessor :choice

  def initialize(choice)
    @choice = choice
  end

  # def self.create()
  #   @game = Game.new(@players[0], @p_choice, @players[1], @c_choice)
  # end

  # def self.instance
  #   @game
  # end

  # def winner
  #   wins = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" }
  #   case
  #     when wins[@p_choice] == @c_choice then "#{@players[0]} wins!"
  #     when wins[@c_choice] == @p_choice then "#{@players[1]} wins!"
  #   end
  # end

end