require './lib/game'

describe Game do
  let(:game) { Game.new("Rock") }
  let(:player) { double :player }
  
  describe '#winner' do
    it "should decide a winner" do
      expect(game.choice).to eq "Rock"
      game.winner
    end
  end

end