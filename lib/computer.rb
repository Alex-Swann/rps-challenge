
class Computer

  attr_reader :name

  DEFAULT_NAME = 'SkyNet'

  MOVES = {:r => 'Rock',
          :p => 'Paper',
          :s => 'Scissors',
          :l => 'Lizard',
          :sp => 'Spock'
        }

  def initialize
    @name = DEFAULT_NAME
  end

  def player_move
    @choice = MOVES.keys.sample
  end

  def display_choice
    "#{choice}"
  end

  private

  def choice
    MOVES[@choice]
  end
end

