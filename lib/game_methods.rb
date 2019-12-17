# frozen_string_literal: true

class Game
  attr_reader :available_board
  attr_accessor :winner
  attr_accessor :turn
  def initialize
    @turn = true
    @winner = false
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

  def checker(p1_mov, p2_mov)
    return false unless p1_mov.size + p2_mov.size >= 5

    true
  end
end
