# frozen_string_literal: true

require './lib/player_methods.rb'
require './lib/game_methods.rb'

RSpec.describe 'Tic Tac Toe Game' do
  this_game = Game.new
  let(:board) { this_game.available_board }

  describe '#next_turn' do
    this_game = Game.new

    it 'when it is an odd turn' do
      expect(this_game.next_turn(3)).to be false
    end

    it 'when it is an even' do
      expect(this_game.next_turn(8)).to be true
    end
  end

  describe '#update_board' do
    it 'when the board changes with an odd turn' do
      this_game.update_board(2, 3)
      expect(board).to eq([1, 'X', 3, 4, 5, 6, 7, 8, 9])
    end

    it 'when the board changes with an even turn' do
      this_game.update_board(6, 4)
      expect(board).to eq([1, 'X', 3, 4, 5, 'O', 7, 8, 9])
    end
  end

  describe '#checker' do
    it 'when the game is able to receive a winner' do
      expect(this_game.checker(5)).to be true
    end

    it 'when the game is not ready to receive a winner' do
      expect(this_game.checker(1)).to be false
    end
  end
end
