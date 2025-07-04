# frozen_string_literal: true

class PlayerMove
  def check_move(current_player)
    index = current_player.choose_index
    empty = @board.empty_index(index)
    retry_cell(current_player) unless empty
  end

  def retry_cell(current_player)
    puts 'Cell already taken, choose another one'
    check_move(current_player)
  end
end
