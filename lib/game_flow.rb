# frozen_string_literal: true

require_relative 'start_game'

# orchestrates different classes for the game flow
class GameFlow
  def initialize
    # @player_one = Player.new
    # @player_two = Player.new
    # @board = Board.new
  end

  def start
    StartGame.start_game
  end
end
