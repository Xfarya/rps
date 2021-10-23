require './lib/player'

describe Player do
  let(:player) { Player.new("Dave") }

  it "should return the players name" do
    expect(player.name).to eq "Dave"
  end

end