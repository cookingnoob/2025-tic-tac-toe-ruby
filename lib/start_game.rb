# frozen_string_literal: true

#
class StartGame
  def self.start_game
    puts 'Want to play Tic Tac Toe? Y/N'
    user_input = input
    goodbye if user_input == 'N'
    user_input == 'Y'
  end

  def self.input
    user_input = gets.chomp
    check_input(user_input)
  end

  def self.check_input(input)
    return input.upcase if %w[Y N y n].include?(input)

    puts 'wrong input, try again! Y/N'
    user_input = gets.chomp
    check_input(user_input)
  end

  def self.goodbye
    puts 'Ok 😪, goodbye'
    exit
  end
end
