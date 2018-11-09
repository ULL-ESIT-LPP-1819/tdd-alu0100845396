# Práctica 6 - Lenguajes y Paradigmas de Programación
#
# La etiqueta de información nutricional es la información sobre el aporte energéico (calórico)
# y contenido de nutrientes que aparece en los envases de los alimentos y bebidas. También se denomina
#“etiquetado sobre las propiedades nutritivas”.
#
# Autor: Omar Mendo Mesa - GH: alu0100845396 / beejeke

# encoding: UTF-8

class Etiqueta              # Clase Etiqueta

    # Constructor de la clase Etiqueta
    attr_reader :nombre, :grasas, :grasas_sat, :grasas_mono, :grasas_poli, :hidratos, :azucares, :polialcoholes, :almidon, :proteinas, :sal

    def initialize(nombre, grasas, grasas_sat, grasas_mono, grasas_poli, hidratos, azucares, polialcoholes, almidon, proteinas, sal)
        @nombre = nombre
        @grasas = grasas
        @grasas_sat = grasas_sat
        @grasas_mono = grasas_mono
        @grasas_poli = grasas_poli
        @hidratos = hidratos
        @azucares = azucares
        @polialcoholes = polialcoholes
        @almidon = almidon
        @proteinas = proteinas
        @sal = sal
    end
end