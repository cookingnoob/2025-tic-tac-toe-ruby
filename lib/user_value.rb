# frozen_string_literal: true

class UserValue
  def ask_value
    puts 'Yei 🥳, lets play!'
    @player_one.value = ValueSelector.choose_value
    handle_bot_value
    puts "Player value #{@player_one.value}, bot value #{@player_two.value}"
    first_turn
  end

  def handle_bot_value
    @player_two.value = ValueSelector.bot_value(@player_one.value)
    @player_two.bot = true
  end
end
