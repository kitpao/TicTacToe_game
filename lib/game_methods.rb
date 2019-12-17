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

    true
  end

  def update_board(move, turn)
    available_board[move - 1] = 'X' if turn.odd?
    available_board[move - 1] = 'O' if turn.even?
  end

  def checker(p1_mov, p2_mov)
    return false unless p1_mov.size + p2_mov.size >= 5

    true
  end
end

class Player
  attr_accessor :name
  attr_accessor :selection
  attr_accessor :move
  def initialize(name)
    self.name = name
    self.move = 0
    self.selection = []
  end

  def winner(selection)
    possibilities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7]]
    sorted = selection.sort
    possibilities.each do |x|
      return true if sorted & x == x
    end
    false
  end
end
