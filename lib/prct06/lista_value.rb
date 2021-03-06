# Práctica 7 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

Node = Struct.new(:value, :next, :prev)

class ListValue

    include Enumerable, Comparable

    attr_accessor :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def insert_val(value)

        node = Node.new(value, nil, @tail)

        @head = node if @head.nil?
        @tail.next = node unless @tail.nil?

        @tail = node

    end

    def extract_val

        return nil if self.empty
        aux = @head
        @head = @head.next

        @head.prev = nil unless @head.nil?
        @tail = nil if @head.nil?

        aux.next = nil

        aux
    end

    def to_s
        node = Node.new(nil,nil,nil)
        node = @head

        tmp = "{"
        if !(node.nil?)
            tmp += " #{node.value.to_s}"
            node = node.next
        end

        while !(node.nil?)
            tmp += ", #{node.value.to_s}"
            node = node.next
        end
            tmp += " }"
            tmp
    end

    def length

        size = 0
        node = @head

        while !(node.nil?)
            size = size + 1
            node = node.next
        end

        size
    end

    def empty
        @head.nil?
    end

    def each(&block)
        node = Node.new(nil,nil,nil)
        node = @head

        while !(node.nil?)
            yield node.value

        node = node.next
        end
    end

    def sort_for
        tmp = map{|x| x.gasto_energetico_total}
        orden = []
        orden.push(tmp[0])
    
        for i in (1..length - 1)
            for j in (0..i)
                if(orden[j] >= tmp[i])
                    orden.insert(j,tmp[i])
                break
                elsif(orden[orden.length - 1] <= tmp[i])
                    orden.push(tmp[i])
                break
                end
            end
        end
    
        orden
    end
    
    def sort_each
        tmp = map{ |x| x.gasto_energetico_total}
    
        i = 0
        tmp.each do |x|
        a = x
        i1 = i
        j = i1 + 1
    
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


def clasification (lista)
    sal_ir = ListValue.new()
    sal_mal = ListValue.new()

    node = lista.extract_val
  
    while !(node.nil?)

        if node.value.sal > 6
            sal_mal.insert_val(node.value.sal)
        else
            sal_ir.insert_val(node.value.sal)
        end
        node = lista.extract_val
    end

  "{#{sal_ir.to_s}, #{sal_mal.to_s}}"
end

def clasificate_imc (lista)
    obeso = ListValue.new()
    no_obeso = ListValue.new()
    node = lista.extract_val

    while !(node.nil?)
        if node.value.datos.calculate_imc >= 30.0
            obeso.insert_val(node.value.datos.calculate_imc)
        else
            no_obeso.insert_val(node.value.datos.calculate_imc)
        end

        node = lista.extract_val
    end
        clasificacion = ListValue.new
        clasificacion.insert_val(no_obeso)
        clasificacion.insert_val(obeso)
        clasificacion.to_s
end