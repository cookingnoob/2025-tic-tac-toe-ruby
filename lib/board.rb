# frozen_string_literal: true

require_relative 'cell'

# handles the array of cells and its painting into the cli
class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9) { Cell.new(' ') }
    @winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8], [6, 4, 2], [0, 3, 6], [1, 4, 7], [2, 5, 8]]
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

  def ask_for_cell
    puts 'choose a cell between 0-8'
    index = gets.chomp.to_i
    return index if empty_index(index)

    choose_again_cell unless empty_index(index)
  end

  def choose_again_cell
    puts 'that cell has already been taken!'
    ask_for_cell
  end

  def empty_index(index)
    @cells[index].value == ' '
  end

  def choose_cell(index, value)
    @cells[index].value = value
    paint_board
  end

  def check_winner(current_player)
    @winning_combinations.each do |combination|
      cells = [@cells[combination[0]], @cells[combination[1]], @cells[combination[2]]]
      next unless cells.all? do |c|
        c.value != ' '
      end && cells[0].value == cells[1].value && cells[0].value == cells[2].value

      current_player.winner = true
    end
  end
end
