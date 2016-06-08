require 'computer'

describe Computer do
  subject(:comp) { described_class.new('Dave') }

  describe '#name' do
    it 'default name is SkyNet' do
      expect(Computer::DEFAULT_NAME).to eq 'SkyNet'
    end
  end
end