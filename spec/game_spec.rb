require './lib/game'

describe Game do
  let(:game) { Game.new }
  let(:player) { double :player }
  let(:computer) { double :player }

  describe '#winner' do
    it "should decide a winner" do
      expect(player.choice).to eq "Rock"
      game.winner
    end
  end

end