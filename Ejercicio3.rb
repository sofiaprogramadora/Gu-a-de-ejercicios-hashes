# Ejercicio 3: Ejercicio completo con un Hash


# Se tiene un hash con el inventario de un negocio de computadores.

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

# Se pide:

# Crear un menú de 4 opciones, o sea el usuario puede ingresar, 1, 2, 3 o 4 y según eso el programa realizará distintas funciones.

# MENU PRINCIPAL

puts "1. Ingresar un item y su stock"
puts "2. ver el stock total (suma del stock de cada item) que hay en el negocio"
puts "3. ver el ítem que tiene la mayor cantidad de stock"
puts "4. preguntarle al sistema si un item existe en el inventario o no"
puts "5. Salir"
i = gets.chomp.to_i
while i != 5
# Si el usuario ingresa 1, podrá ingresar un item y su stock en un solo string y agregarlo al hash, para separar el nombre del stock el usuario debe utilizar una coma.
	if i == 1
# Ejemplo del input "Pendrives, 100"
		a = false
		puts "Porfavor ingrese un item con este formato: Pendrives, 100"
		new_stock = gets.chomp
		while !a
			if new_stock.include?(",")
				new_stock = new_stock.strip.delete(" ").split(",")
				puts "Muy Bien Hecho #{new_stock}"
			a = true
			elsif new_stock.include?(",") == false
				puts "Solo incluya una coma"
				new_stock = gets.chomp
			end
		end
		inventario[new_stock[0].to_sym] = new_stock[1].to_i
# Después de ingresar el valor Si el usuario igresa 2, podrá ver el stock total (suma del stock de cada item) que hay en el negocio


	elsif i == 2
		sum = 0
		inventario.each_value do |i|
			sum += i.to_i
		end

		puts "El stock total es de #{sum}"

# Si el usuario ingresa 3 podrá ver el ítem que tiene la mayor cantidad de stock

	elsif i == 3
		puts inventario.select {|k,v| v == inventario.values.max.to_i }

# Si el usuario ingresa 4 podrá ingresar preguntarle al sistema si un item existe en el inventario o no, por ejemplo el usuario ingresará "Notebooks" y el programa responderá "si"

	elsif i == 4
		include_val = gets.chomp.to_sym
		if inventario.keys.include?(include_val)
			puts "si"
		else
			puts "no"
		end
# El programa debe repertirse hasta que el usuario ingrese 5

	end
	puts "1. Ingresar un item y su stock"
	puts "2. ver el stock total (suma del stock de cada item) que hay en el negocio"
	puts "3. ver el ítem que tiene la mayor cantidad de stock"
	puts "4. preguntarle al sistema si un item existe en el inventario o no"
	puts "5. Salir"
	i = gets.chomp.to_i
end