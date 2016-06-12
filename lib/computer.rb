require_relative 'rps_extended_combos'

class Computer
  include RpsExtendedCombinations

  attr_reader :name, :choice

  DEFAULT_NAME = 'SkyNet'

  def initialize
    @name = DEFAULT_NAME
  end

  def player_move
    @choice = MOVES.sample
  end

end

