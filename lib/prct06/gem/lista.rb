# Práctica 7 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

Node = Struct.new(:value, :next, :prev)

class List
    attr_accessor :head, :tail
      
    def initialize(node)
        @head = node
        @tail = node
    end

    def insert_beginning(node)
        if (@head == nil)
            @head = node
            @tail = node
        else      
            temporal_node = @head.next
            @head = node
            @head.next = temporal_node
            @head.prev = temporal_node           
        end      
    end
end 