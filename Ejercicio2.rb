### Ejercicio 2: Operaciones típicas sobre un hash ###

# Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de este.
# restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1. Obtener el plato mas caro

h_v = restaurant_menu.max_by{|k,v| v}[0]
h_k = restaurant_menu.max_by{|k,v| v}[1]
puts "#{h_v} es el mas caro y vale #{h_k}"

# 2. Obtener el plato mas barato

l_v = restaurant_menu.min_by{|k,v| v}[0]
l_k = restaurant_menu.min_by{|k,v| v}[1]
puts "#{l_v} es el mas barato y vale #{l_k}"

# 3. Sacar el promedio del valor de los platos

sum = 0
lenght = 0
restaurant_menu.each_value do |i|
	sum += i.to_i
	lenght += 1
end
avg = sum / lenght

puts "El promedio de los valores es de #{avg}"

# 4. Crear un arreglo con solo los nombres de los platos

platos = []
restaurant_menu.each_key{|i| platos << i }
print platos

# 5. Crear un arreglo con solo los valores de los platos
puts

precios = []
restaurant_menu.each_value{|i| precios << i }
print precios

# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).

new_hash = {}

a = []
map_array = restaurant_menu.each_value{ |i| i }
map_array = map_array.map{ |v| (v[1].to_f * 1.19)}

# map_array.each_with_index do |v, i|
# 	new_hash[v.to_s.to_sym] = map_array[i]
# end

names = restaurant_menu.keys

restaurant_menu.size.times do |i|
	new_hash[names[i]] = map_array[i]
end
puts
puts new_hash

# 7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra.

