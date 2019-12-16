# frozen_string_literal: true

class Game
  attr_accessor :available_board
  attr_accessor :winner
  attr_accessor :turn
  def initialize 
    self.turn = true
    self.winner = false
    self.available_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def next_turn(turn)
    return false if turn.odd?
    return true
  end

end


class Player
  attr_accessor :name
  attr_accessor :selection
  
  def initialize (name)
    self.name = name
    # @movements = 0
    self.selection = []
  end
  
end