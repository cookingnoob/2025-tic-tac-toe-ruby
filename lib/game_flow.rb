# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board

  def initialize
    @board = Board.new
    @player_one = ''
    @player_two = ''
  end

  def begin
    random_number = Random.rand(1...99)
    p random_number
  end
end
