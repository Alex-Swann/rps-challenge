
class Player

  attr_reader :name

  DEFAULT_NAME = 'PieInTheSky'

  MOVES = {:r => 'Rock',
           :p => 'Paper',
           :s => 'Scissors',
           :l => 'Lizard',
           :sp => 'Spock'
          }

  def initialize(name = DEFAULT_NAME)
    @name = name
  end


  def player_move(move)
    input_to_symbol(move)
  end

  def display_choice
    "#{choice}"
  end

  private

  def input_to_symbol(move)
    @choice = move.to_sym
  end

  def choice
    MOVES[@choice]
  end
end



