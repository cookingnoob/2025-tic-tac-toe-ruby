# frozen_string_literal: true

# Clase Jugador que tiene un inicializador del valor X o Y
# Jugador tiene subclase Bot que escoge el valor opuesto al usuario
# El metodo de jugar del bot escoge de forma aleatoria un elemento
# Despues de elegir su elemento, se pasa el turno al jugador
# Despues del turno del jugador se pasa al bot

# class to store values for user and bot
class ValueSelector
  def initialize
    @human_value = ''
    @bot_value = ''
    @error_message = ''
  end

  def choose_value
    puts 'Choose a value of "X" or "O"'
    sanitazed_value = user_input
    puts "You have chosen #{sanitazed_value}"
    @human_value = sanitazed_value
  end

  def user_input
    user_value = gets.chomp
    check_value(user_value)
  end

  def check_value(value)
    return value.upcase if %w[X O x o].include?(value)

    puts 'Wrong input, try again'
    user_input
  end
end
