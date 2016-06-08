require 'rps'

describe RPS do
  subject(:rps) { described_class.new("Dave") }
  subject(:rps_multi) { described_class.new("Dave","Spencer") }

  describe '#players' do
    it 'can display one player and computer' do
      expect(rps.players).to eq ["Dave","SkyNet"]
    end
    it 'can have two players' do
      expect(rps_multi.players).to eq ["Dave", "Spencer"]
    end
  end

  describe '#player_1_move' do
    it 'allows a player move' do
      $stdin = StringIO.new("s")
      expect(rps.player_1_move).to eq 'Scissors'
    end
    it 'returns different player moves' do
      $stdin = StringIO.new("r")
      expect(rps.player_1_move).to eq 'Rock'
    end
  end

  describe '#player_2_move' do
    it 'allows a second player to move' do
      $stdin = StringIO.new("r")
      rps_multi.player_1_move
      $stdin = StringIO.new("l")
      expect(rps_multi.player_2_move).to eq 'Lizard'
    end
  end

  describe '#result' do
    it 'should yield a result' do
      $stdin = StringIO.new("r")
      rps_multi.player_1_move
      $stdin = StringIO.new("l")
      rps_multi.player_2_move
      expect(rps_multi.result).to eq 'Rock crushes Lizard.'
    end
    it 'should return a tie if there is one' do
      $stdin = StringIO.new("sp")
      rps_multi.player_1_move
      $stdin = StringIO.new("sp")
      rps_multi.player_2_move
      expect(rps_multi.result).to eq "It's a tie!"
    end
  end
end



