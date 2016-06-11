
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


  def player_move
    input_to_symbol
  end

  def display_choice
    "#{choice}"
  end

  private

  def input_to_symbol
    @choice = gets.chomp.to_sym
  end

  def choice
    MOVES[@choice]
  end
end



