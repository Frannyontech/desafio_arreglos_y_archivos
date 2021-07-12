# Por cada dato del arreglo, se debe imprimir un | y una cantidad de * equivalente al
# número.

# valores = ([5, 3, 2, 5, 10])

def chart(valores)
    x = 2 #Constante de proporcionalidad
    valores.each do |num|
        print '|'
        (num*x).times do
            print '*'
        end
    puts
    end
    print '>'
    # guiones 
    (valores.max*x).times {print'-'}
    print ' '
    valores.max.times do |i|
        print "#{1+i} "
    end

end
