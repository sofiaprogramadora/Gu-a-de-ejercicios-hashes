# Ejercicio 5: Array de hashes

# Crear un arreglo de hashes, cada hash contiene un array

# con datos de persona, estos datos son:

# Nombre

# País

# Continente

# Género

arr = [{"Nombre": "Sofia", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Rocio", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Aslan", "País": "Chile", "Continente": "America", "Género": "Masculino"}, {"Nombre": "Luna", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Isabella", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Lucia", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Catie", "País": "Chile", "Continente": "America", "Género": "Femenino"}, {"Nombre": "Nicolas", "País": "Chile", "Continente": "America", "Género": "Masculino"}, {"Nombre": "Pedro", "País": "Chile", "Continente": "America", "Género": "Masculino"}, {"Nombre": "Estrella", "País": "Africa", "Continente": "Africa", "Género": "Femenino"}]


# 1. Crear el array de hashes y pobarlo con al menos 8

# personas:

# 2. Contar la cantidad de personas de la lista.

puts arr.size

# 3. Generar un array con cada continente, eliminar repeticiones, considerar que pueden haber nombres escritos con mayúscula y minúscula.

continents = []
arr.each do |i|
	i.each do |k, v|
		continents << v if k == :Continente
	end
end

new_ctn = []
continents.size.times do |i|
	continents.each do |i|
		new_ctn << i if !new_ctn.include?(i)
	end
end

puts new_ctn

# 4. Generar una lista con todas las personas llamadas pedro

pedros = []
arr.each do |i|
	pedros << i if "Pedro".upcase == i[:Nombre].upcase
end

puts pedros

# 5. Hacer dos listas de personas, una por cada género  6.
lista1 = [] # Femenino
lista2 = [] # Masculino

arr.each do |i|
	i.each do |k, v|
		lista2 << i if k == :Género and i[k] == "Masculino"
		lista1 << i if k == :Género and i[k] == "Femenino"
	end
end


puts lista1

puts puts

puts lista2

# Armar un hash, donde cada clave sea un continente y el value un array con los países de cada continente.

keys = {}
arr.each do |i|
	keys[i[:Continente]] = i[:País]
end

keys.uniq

puts keys