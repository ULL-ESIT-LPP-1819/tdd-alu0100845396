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

    # Método para calcular el PTI
    def peso_teorico_ideal
        ((@datos.talla - 1.50) * 100 * 0.75 + 50).round(2)
    end

    # Método para calcular el GEB
    def gasto_energetico_basal
        if (@datos.sexo == 0)
            ((10 * @datos.peso) + (6.25 * @datos.talla * 100) - (5 * @datos.edad) - 161).round(2)
        elsif(@datos.sexo == 1)
            ((10 * @datos.peso) + (6.25 * @datos.talla * 100) - (5 * @datos.edad) + 5).round(2)
        end
    end

    # Método para calcular el ET
    def efecto_termogeno
        (self.gasto_energetico_basal * 0.10).round(2)
    end
end