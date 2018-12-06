# Práctica 8 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "prct06/gem/antrodata"

class Individuo

    include Comparable

    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end

class Paciente < Individuo

    attr_accessor :datos

    def initialize(nombre, peso, talla, edad, sexo, cintura, cadera)
        @nombre = nombre
        @datos = AntroData.new(peso, talla, edad, sexo, cintura, cadera)
    end

    def to_s
        tmp = "Nombre #{@nombre}\n"
        tmp += @datos.to_s
    end

    def <=> (other)
        datos.calculate_imc  <=> other.datos.calculate_imc 
    end

    def enumerable
        datos.calculate_imc
    end

end