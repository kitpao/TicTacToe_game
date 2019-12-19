# frozen_string_literal: true

require './lib/player_methods.rb'
require './lib/game_methods.rb'

RSpec.describe 'Tic Tac Toe Game' do
  describe '#next_turn' do
    this_game = Game.new

    it 'when it is an odd turn' do
      expect(this_game.next_turn(3)).to be false
    end

    it 'when it is an even' do
      expect(this_game.next_turn(8)).to be true
    end
  end
end
