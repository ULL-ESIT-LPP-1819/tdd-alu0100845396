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
        tmp += " #{node.value.to_s}"
        node = node.next

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