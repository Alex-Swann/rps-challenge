require_relative 'computer'
require_relative 'player'

class RPS

  MOVES = {:r => 'Rock',
           :p => 'Paper',
           :s => 'Scissors',
           :l => 'Lizard',
           :sp => 'Spock'
          }

  MOVE_RESULT = {[:r, :s] => 'Rock crushes Scissors.',
                [:l, :r] => 'Rock crushes Lizard.',
                [:p, :r] => 'Paper covers Rock.',
                [:p, :sp] => 'Paper disproves Spock.',
                [:p, :s] => 'Scissors cut Paper.',
                [:l, :s] => 'Scissors decapitate Lizard.',
                [:l, :sp] => 'Lizard poisons Spock.',
                [:l, :p] => 'Lizard eats Paper.',
                [:s, :sp] => 'Spock smashes Scissors.',
                [:r, :sp] => 'Spock vaporizes Rock.'
                }

  attr_reader :players, :moves

  def initialize(player_1 = Player.new, player_2 = Computer.new.name)
    @players = [player_1, player_2]
  end

  def player_1_move
    @moves = []
    @moves << input_to_symbol
    MOVES[@moves[0]]
  end

  def player_2_move
    @moves << input_to_symbol
    MOVES[@moves[1]]
  end

  def result
    moves_the_same? ? "It's a tie!" : MOVE_RESULT[@moves.sort]
  end

  private

  def input_to_symbol
    gets.chomp.to_sym
  end

  def moves_the_same?
    @moves.uniq.size == 1
  end
end





