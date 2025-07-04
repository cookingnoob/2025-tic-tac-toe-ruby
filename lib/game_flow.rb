# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'
require_relative 'player'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board, :player_one, :player_two

  def initialize
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
  end

  def begin
    random_number = Random.rand(1...99)
    player_one.turn = true if random_number.even?
    player_two.turn = true if random_number.odd?
    values
  end

  def values
    puts 'player one gets value' if player_one.turn
    puts 'player two gets value' if player_two.turn
  end
end
