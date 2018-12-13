# Práctica 8 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

require "prct06/antrodata"

# Declaración de la clase Individuo
class Individuo

    # Inclusión del mixin Comparable
    include Comparable

    attr_accessor :nombre

    # Método initialize de la clase Individuo
    def initialize(nombre)
        @nombre = nombre
    end

end

# Declaración de cla clase Paciente, que hereda de Individuo
class Paciente < Individuo

    attr_accessor :datos

    # Método initialize de la clase Paciente
    def initialize(nombre, peso, talla, edad, sexo, cintura, cadera)
        @nombre = nombre
        @datos = AntroData.new(peso, talla, edad, sexo, cintura, cadera)
    end

    # Método to_s que muestra los datos y el nombre del paciente
    def to_s
        tmp = "Nombre #{@nombre}\n"
        tmp += @datos.to_s
    end

    # Método <=> del mixin Comparable
    def <=> (other)
        datos.calculate_imc  <=> other.datos.calculate_imc 
    end

    # Método enumerable del mixin Enumerable 
    def enumerable
        datos.calculate_imc
    end

end