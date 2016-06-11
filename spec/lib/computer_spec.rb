require 'computer'

describe Computer do
  subject(:comp) { described_class.new }

  before :each do
    srand(0)
  end

  describe '#name' do
    it 'default name is SkyNet' do
      expect(Computer::DEFAULT_NAME).to eq 'SkyNet'
    end
  end

  describe '#player_move' do
    it 'allows computer player to move randomly' do
      expect(comp.player_move).to eq :sp
    end
  end

  describe '#display_choice' do
    it 'displays choice' do
      comp.player_move
      expect(comp.display_choice).to eq 'Spock'
    end
  end
end