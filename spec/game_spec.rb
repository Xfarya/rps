require './lib/game'

describe Game do
  let(:game) { Game.new("Rock") }
  
  describe '#winner' do

    it "should let player win" do
      game.opponent = "Scissors"
      expect(game.winner).to eq "You win!"
    end

    it "should let opponent win" do
      game.opponent = "Paper"
      expect(game.winner).to eq "Computer wins!"
    end

    it "should decide a draw" do
      game.opponent = "Rock"
      expect(game.winner).to eq "It's a draw"
    end
  end

end