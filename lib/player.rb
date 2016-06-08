
class Player

  attr_reader :name

  DEFAULT_NAME = 'PieInTheSky'

  def initialize(name = DEFAULT_NAME)
    @name = name
  end

end