# Ejercicio 6

# En base a la siguiente hash de peliculas: (archivo movies.rb)

require_relative "movies.rb"

# 1. Crear un arreglo con las peliculas del mismo género.

list_of_genres = {}
movies = movies()
movies.each do |k, v|
	list_of_genres[v[:genre]] = k, v
end

newmovieslist = list_of_genres.values
## puts list_of_genres.keys # muestra los generos

## puts list_of_genres.values muestra las peliculas
# 2. Contar las peliculas de cada género.


genre_movies = {}
movies.each_key do |i|
	genre_movies[movies.each_value{ |i| i }[i][:genre]] = 0 if genre_movies[movies.each_value{ |i| i }[i][:genre]] == nil
	genre_movies[movies.each_value{ |i| i }[i][:genre]] += 1
end

# puts genre_movies
# 3. Crear un arreglo con las películas que su año se encuentre en un rango.

require 'date'
movie = []
age = []
list_of_genres.each do |k, v|
	movie << list_of_genres[k][0]
	age << list_of_genres[k][1][:realease_date]
end

def parse(arr)
	newarr = []
	arr.each do |i|
		newarr << Date.parse(i).year
	end
	newarr
end

ages = parse(age)

def rango(arr, desde, hasta)
	newarr = []
	arr.each do |i|
		if i > desde && i < hasta
			newarr << i
		end
	end
	return newarr.uniq
end


supernewarray = []
a = rango(ages, 2006, 2008)
movies.each do |ii|
	a.each do |i|
		supernewarray <<  ii[0] if Date.parse(ii[1][:realease_date]).year == i
	end
end

puts supernewarray

# 4. Según los votos decir si la película fue: buena, mala, regular.

good = 0
bad = 0

movies.each do |k, v|
	votos = v[:votes]
	votos.each do |i|
		if i == :good
			good += 1
		else i == :bad
			bad += 1
		end
	end

	if good > bad
		puts "#{k} es buena"
	elsif bad > good
		puts "#{k} es mala"
	elsif good == bad
		puts "#{k} es regular"
	end
	good = 0
	bad = 0
end
