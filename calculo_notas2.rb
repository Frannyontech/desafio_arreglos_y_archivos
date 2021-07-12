# un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
# que contenga solo las notas más alta de cada alumno

data = File.open('notas.data').readlines
data.map!{|e| e.split(",")} 

def nota_mas_alta(array)
    b = array.map do |a|
        [a[0], a.map{|e| e.to_i}.max]
    end
end

pp nota_mas_alta(data)


