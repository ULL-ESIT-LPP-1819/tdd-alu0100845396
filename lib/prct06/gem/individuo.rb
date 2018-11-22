# Práctica 8 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

class Individuo

    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end

class Paciente < Individuo

    attr_accessor :datos

end