# frozen_string_literal: true

require_relative 'cell'

# handles the array of cells and its painting into the cli
# [0,1,2], [3,4,5], [6,7,8], [0,4,8], [6,4,2]
class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9) { Cell.new(' ') }
  end

  def paint_board
    puts paint_row(0, 1, 2)
    puts '-|-|-'
    puts paint_row(3, 4, 5)
    puts '-|-|-'
    puts paint_row(6, 7, 8)
  end

  def paint_row(first, second, third)
    "#{@cells[first].value}|#{@cells[second].value}|#{@cells[third].value}"
  end

  def set_player_value(location, player_value)
    return 'cell already has a value' if @cells[location].value != ' '

    @cells[location].value = player_value
  end

  def check_winner
    puts 'winner!'
  end

  def declare_tie
    puts 'its a tie!'
  end
end

# test = Board.new
# test.paint_board
# p 'turn one'
# test.set_player_value(4, 'X')
# test.paint_board
# p 'second turn'
# test.set_player_value(8, 'O')
# test.paint_board
# p 'third turn'
# p test.set_player_value(8, 'X')
# test.paint_board
