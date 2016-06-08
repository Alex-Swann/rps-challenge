
require 'player'

describe Player do
  subject(:player_no_name) { described_class.new }
  subject(:player) { described_class.new("Dave")}

  describe '#name' do
    it 'should allow user to set a name' do
      expect(player.name).to eq "Dave"
    end
    it 'has a default name' do
      expect(player_no_name.name).to eq 'PieInTheSky'
    end
  end
end