require './lib/game'

describe Game do
  let(:game) { Game.new("Rock") }
  let(:player) { double :player }
  let(:opponent) { double :opponent }
  
  describe '#winner' do
    it "should decide a winner" do
      game.stub(:opponent).and_return("Rock")
      expect(game.winner).to eq "It's a draw"
    end
  end

end