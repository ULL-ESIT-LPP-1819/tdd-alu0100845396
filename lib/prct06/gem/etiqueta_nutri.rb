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
    attr_reader :nombre, :grasas, :grasas_sat, :grasas_mono, :grasas_poli, :hidratos, :azucares, :polialcoholes, :almidon, :fibra, :proteinas, :sal

    def initialize(nombre, grasas, grasas_sat, grasas_mono, grasas_poli, hidratos, azucares, polialcoholes, almidon, fibra, proteinas, sal)
        @nombre = nombre
        @grasas = grasas
        @grasas_sat = grasas_sat
        @grasas_mono = grasas_mono
        @grasas_poli = grasas_poli
        @hidratos = hidratos
        @azucares = azucares
        @polialcoholes = polialcoholes
        @almidon = almidon
        @fibra = fibra
        @proteinas = proteinas
        @sal = sal
    end

    def grasas_kj               # Método para obtener la cantidad de grasas en Kj
        @grasas * 37
    end

    def grasas_mono_kj          # Método para obtener la cantidad de grasas monosaturadas en Kj
        @grasas_mono * 37
    end

    def grasas_poli_kj          # Método para obtener la cantidad de grasas polisaturadas en Kj
        @grasas_poli * 37
    end

    def hidratos_kj             # Método para obtener la cantidad de hidratos de carbono en Kj
        @hidratos * 17
    end

    def polialcohol_kj          # Método para obtener la cantidad de hidratos de carbono en Kj
        @polialcoholes * 10
    end

    def almidon_kj              # Método para obtener la cantidad de almidon en Kj
        @almidon * 17
    end

    def fibra_kj                # Método para obtener la cantidad de fibra en Kj
        @fibra * 8
    end

    def proteinas_kj            # Método para obtener la cantidad de proteínas en Kj
        @proteinas * 17
    end

    def sal_kj                  # Método para obtener la cantidad de sal en Kj
        @sal * 25
    end

    def valor_ener_kj             # Método para obtener el valor energético en Kj
       val_ener = (grasas_kj + grasas_mono_kj + grasas_poli_kj + hidratos_kj + polialcohol_kj + almidon_kj + fibra_kj + proteinas_kj + sal_kj).round(2)
    end

    def to_s            # Método to_s de visualización de datos
        puts "(Nombre de etiqueta: #{@nombre}, Grasas: #{@grasas}, Grasas saturadas: #{@grasas_sat}, Grasas monosaturadas: #{@grasas_mono}, Grasas polisaturadas: #{@grasas_poli}, Hidratos: #{@hidratos}, Azúcares: #{@azucares}, Polialcoholes: #{@polialcoholes}, Almidón: #{@almidon}, Fibra: #{@fibra}, Proteinas: #{@proteinas}, Sal: #{@sal})"
    end
end