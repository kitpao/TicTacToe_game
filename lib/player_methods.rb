# frozen_string_literal: true

class Player
  attr_reader :name, :selection
  attr_accessor :move
  def initialize(name)
    @name = name
    self.move = 0
    @selection = []
  end

  def winner(selection)
    possibilities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7], [1, 4, 7]]
    sorted = selection.sort
    possibilities.each { |x| return true if sorted & x == x }
    false
  end
end
