# frozen_string_literal: true

require_relative 'cell'

# handles the array of cells and its painting into the cli
# [0,1,2], [3,4,5], [6,7,8], [0,4,8], [6,4,2]
#
class Board
  def initialize
    @cells = Array.new(9) { Cell.new('') }
  end

  def paint_board
    puts paint_row(0, 1, 2)
    puts '-|--|-'
    puts paint_row(3, 4, 5)
    puts '-|--|-'
    puts paint_row(6, 7, 8)
  end

  def paint_row(first, second, third)
    "#{@cells[first].value} | #{@cells[second].value} | #{@cells[third].value}"
  end

  def set_player_value(location, player_value)
    @cells[location].value = player_value
  end
end
