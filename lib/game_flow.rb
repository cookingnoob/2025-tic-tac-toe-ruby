# frozen_string_literal: true

require_relative 'player'
require_relative 'board'

# orchestrates different classes for the game flow
class GameFlow
  def initialize
    @player_one = Player.new
    @board = Board.new
  end
end
