# Ejercicio 1: Introducción a Hashes
# Dado el hash = {"x": 1, "y":2}
hash = {"x": 1, "y":2}
# Agregar el texto z con el valor 3
hash[:z] = 3
# Cambiar el valor de x por 5
hash[:x] = 5
# Eliminar la clave y
hash.delete(:y)
# Si el hash tiene una clave llamada z mostrar en
# pantalla "yeeah"
if hash[:y] != nil
	puts "yeeah"
end
# Invertir el diccionario de forma que los valores sean
# las llaves y las llaves los valores
# ejemplo: x = {"a":"hola" } se transforme en {"hola": "a"}

new_hash = hash.invert
puts new_hash