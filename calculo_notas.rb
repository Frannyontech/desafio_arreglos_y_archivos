# un arreglo con el nombre y notas del alumno y devuelva la nota más alta.


data = File.open('notas.data').readlines
data.map!{|x| x.split(",")} 

def nota_mas_alta(array)
    [array[0], array.map{|x| x.to_i}.max]
end

pp nota_mas_alta(data[0])


