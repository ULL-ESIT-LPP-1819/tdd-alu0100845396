# Práctica 11 - Lenguajes y Paradigmas de Programación
#
# Se ha te tener en cuenta que un men´u diet´etico esta compuesto por un conjunto de
# alimentos procesados, donde cada uno de ellos cuenta con una etiqueta de informaci´on nutricional.
# La energ´ıa, grasas, hidratos de carbono, prote´ınas, l´ıpidos, fibra y sal del men´u se obtienen a partir
# de los alimentos que lo componen.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

class Array

    def sort_for
  
        tmp = map{|x| x.reduce(:+)}
        orden = []
        orden.push(tmp[0])
  
        for i in (1..length - 1)
            for j in (0..i)
  
                if (tmp[i] < orden[j])
                    orden.insert(j,tmp[i])
                break
                elsif (orden[(orden.length)-1] <= tmp[i])
                    orden.push(tmp[i])
                break
                end
            end
        end
  
        return orden
    end
  
    def sort_each
  
    tmp = map{ |x| x.reduce(:+)}
    orden = []
    i = 0
        tmp.each do |x|
            a = x
            i1 = i
            j = i1+1
  
        tmp[j..tmp.length - 1].each do |y|
            if (a > y)
                a = y
                i1 = j
            end
            j+=1
        end
  
        tmp[i1] = x
        tmp[i] = a
        i+=1
  
    end
  
    tmp
  
    end
  
end