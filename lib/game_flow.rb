# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board, @player_one, @player_two

  def initialize
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
  end

  def begin
    random_number = Random.rand(1...99)
    puts 'player one begins' if random_number.even?
    puts 'player two begins' if random_number.odd?
  end
end
