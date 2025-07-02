# frozen_string_literal: true

# Un Tablero tiene 9 Celdas
# metodo se activa despues de un evento is_winner que checa las posibilidades de ganar
# [0,1,2], [3,4,5], [6,7,8], [0,4,8], [6,4,2]
# Si todas las celdas son ocupadas y no hay ganador se declara draw
#
# Celda tiene un valor que es initializado como ''
# tiene un metodo para cambiar y leer ese valor
# Si tiene un valor que no es '', no se puede cambiar
# Para cambiar la celda es necesario conocer cual del array se va a cambiar
#
# Clase Jugador que tiene un inicializador del valor X o Y
# Jugador tiene subclase Bot que escoge el valor opuesto al usuario
# El metodo de jugar del bot escoge de forma aleatoria un elemento
# Despues de elegir su elemento, se pasa el turno al jugador
# Despues del turno del jugador se pasa al bot
