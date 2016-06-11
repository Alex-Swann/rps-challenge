
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

  describe '#player_move' do
    it 'allows a player move' do
      expect(player_no_name.player_move('s')).to eq :s
    end
    it 'returns different player moves' do
      expect(player_no_name.player_move('r')).to eq :r
    end
  end

  describe '#display_choice' do
    it 'displays choice' do
      player_no_name.player_move('l')
      expect(player_no_name.display_choice).to eq 'Lizard'
    end
  end
end