# frozen_string_literal: true

require_relative 'board'
require_relative 'value_selector'

# orchestrates different classes for the game flow
class GameFlow
  attr_accessor :board

  def initialize
    @board = Board.new
  end
end

# la meta es que el juego funcione, luego hago el refactor
