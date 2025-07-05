# frozen_string_literal: true

require_relative 'cell'

# handles the array of cells and its painting into the cli
class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9) { Cell.new(' ') }
    @winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8], [6, 4, 2], [0, 3, 6], [2, 5, 8]]
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

  def empty_index(index)
    @cells[index].value == ' '
  end

  def choose_cell(index, value)
    @cells[index].value = value
    paint_board
  end

  def check_winner(current_player)
    @winning_combinations.map do |c|
      current_player.winner = true if @cells[c[0]] == @cells[c[1]] && @cells[c[0]] == @cells[c[2]]
    end
  end
end
