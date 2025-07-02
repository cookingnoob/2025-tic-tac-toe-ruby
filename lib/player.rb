# frozen_string_literal: true

# Clase Jugador que tiene un inicializador del valor X o Y
# Jugador tiene subclase Bot que escoge el valor opuesto al usuario
# El metodo de jugar del bot escoge de forma aleatoria un elemento
# Despues de elegir su elemento, se pasa el turno al jugador
# Despues del turno del jugador se pasa al bot

# class to store values for user and bot
class Player
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def user_value
    puts 'Choose a value of X | Y'
  end
end
