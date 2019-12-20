# frozen_string_literal: true

class Game
  attr_reader :available_board
  attr_accessor :winner, :turn
  def initialize
    self.turn = true
    self.winner = false
    @available_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def next_turn(turn)
    return false if turn.odd?

    true
  end

  def update_board(move, turn)
    available_board[move - 1] = 'X' if turn.odd?
    available_board[move - 1] = 'O' if turn.even?
  end

  def checker(turn)
    return false unless turn >= 5

    true
  end
end
