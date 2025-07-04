# frozen_string_literal: true

require_relative 'start_game'
require_relative 'game_flow'

# instantiates a new match if player wants to play
class NewGame
  attr_accessor :game

  def initialize
    @game = nil
  end

  def start
    @game = GameFlow.new if StartGame.start_game
  end
end
