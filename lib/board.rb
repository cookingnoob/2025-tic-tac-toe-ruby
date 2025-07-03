# frozen_string_literal: true

require_relative 'cell'

# Un Tablero tiene 9 Celdas
# metodo se activa despues de un evento is_winner que checa las posibilidades de ganar
# [0,1,2], [3,4,5], [6,7,8], [0,4,8], [6,4,2]
# Si todas las celdas son ocupadas y no hay ganador se declara draw
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
end
