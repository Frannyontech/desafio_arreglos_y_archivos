# El desafío consiste en hacer 2 simulaciones.
# ● Las ventas totales del primer semestre, dado que en la primera mitad del semestre
# se vende un 10% más.
# ● Las ventas totales del segundo semestre, dado que en la segunda mitad del
# semestre se vende un 20% más.

data = File.open('ventas_base.db').read.split(",")
data.map!{|x| x.to_i}

def proyecciones(array, aum1, aum2)
    sem1 = array[0..5].sum
    sem2 = array[6..11].sum
    (sem1 * aum1 + sem2 * aum2).round(0.2)
end
output = File.open('resultados.data', 'w')
output.write("#{proyecciones(data, 1, 1.1)}\n")
output.write(proyecciones(data, 1, 1.2))
output.close



# 'w' permiso de escritura