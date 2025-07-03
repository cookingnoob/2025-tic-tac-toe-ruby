# frozen_string_literal: true

# Clase Jugador que tiene un inicializador del valor X o Y
# Jugador tiene subclase Bot que escoge el valor opuesto al usuario
# El metodo de jugar del bot escoge de forma aleatoria un elemento
# Despues de elegir su elemento, se pasa el turno al jugador
# Despues del turno del jugador se pasa al bot

# class to store values for user and bot
class Player
  def initialize
    @value = ''
    @error_message = ''
  end

  def value
    puts 'Choose a value of "X" or "O"'
    user_value = gets.chomp
    sanitazed_value = check_value(user_value)
    "You have chosen #{sanitazed_value}"
  end

  def check_value(value)
    return value.upcase if %w[X O x o].include?(value)

    puts 'Wrong input, try again'
    self.value
  end
end
